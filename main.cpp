#include <iostream>
#include "phaser.h"
#include "results.h"
#include "type.h"
#include <string>
#include <sstream>


#define PROTOCOL_HIC "hic"
#define PROTOCOL_NGS "ngs"
#define PROTOCOL_TENX "tenx"
#define PROTOCOL_PACBIO "pacbio"
#define PROTOCOL_NANOPORE "nanopore"
#define PROTOCOL_HYBRID "hybrid"
bool HYBRID = false;
bool NEW_FORMAT = false;
bool KEEP_PS = false;
int WINDOW_SIZE = 200;
int WINDOW_OVERLAP = 60;
int BASE_OFFSET = 33;
int MAX_BARCODE_SPANNING = 60000;
int MAX_HIC_INSERTION= 40000000;
int RECURSIVE_LIMIT = 15;
int OPERATION = MODE_PE;
bool HAS_HIC;
bool HAS_TENX;
std::vector<int> OPERATIONS;


enum optionIndex
{
    UNKNOWN, HELP,CONTIGS, VCF, FRAGMENT, OUT, TENX, HIC, _WINDOW_SIZE, COVERAGE, _RECURSIVE_LIMIT, NANOPORE, PACBIO, NOSORT,
    _MAX_BARCODE_SPANNING_LENGTH, _WINDOW_OVERLAP, STATS, _NEWFORMAT, USESECONDARY, _KEEP_PHASING_INFO, _BASEOFFSET, _HYBRID,PROTOCOLS
};


struct Arg : public option::Arg
{
    static void printError(const char *msg1, const option::Option &opt, const char *msg2)
    {
        std::cerr << "SpecHap: " << msg1 << opt.desc->longopt << msg2 << std::endl;
    }

    static option::ArgStatus Unknown(const option::Option &option, bool msg)
    {
        if (msg) printError("Unknown option '", option, "'\n");
        return option::ARG_ILLEGAL;
    }

    static option::ArgStatus Required(const option::Option &option, bool msg)
    {
        if (option.arg != nullptr)
            return option::ARG_OK;

        if (msg) printError("Option '", option, "' requires an argument\n");
        return option::ARG_ILLEGAL;
    }

    static option::ArgStatus Numeric(const option::Option &option, bool msg)
    {
        char *endptr = nullptr;
        if (option.arg != nullptr && strtol(option.arg, &endptr, 10))
            ;
        if (endptr != option.arg && *endptr == 0)
            return option::ARG_OK;
        return option::ARG_IGNORE;
    }
};



const option::Descriptor usage[] =
        {
                {CONTIGS,          0, "C", "contigs",                   Arg::Required, "\tcontigs to phasing with ',' split eg. chr1,chr2"},
                {UNKNOWN,           0, "",  "",                       Arg::Unknown,  "Usage: "},
                {HELP,              0, "h", "help",                   Arg::None,     "\t--help\tPrint this message and exit."},
                {VCF,               0, "v", "vcf",                    Arg::Required, "\t-v <arg>,\t--vcf=<arg>\tSorted Heterozygous VCF File, gzipped, tbi or csi index required."},
                {FRAGMENT,          0, "f", "frag",                   Arg::Required, "\t-f <arg>,\t--frag=<arg>\tFragment File Generated by ExtractHairs, sort by SNP position is required, multiply files with comma split is permitted"},
                {STATS,             0, "s", "frag_stat",              Arg::Required,  "\t-s <arg>,\t--frag_stat=<arg>\tFragment file statistic, in bed format, required for 10x."},
                {OUT,               0, "o", "out",                    Arg::Required, "\t-o <arg>,\t--out=<arg>\tOutput VCF File."},
                {_WINDOW_SIZE,      0, "", "window_size",             Arg::Numeric,  "\t-w [<arg>],\t--window_size [<arg>]\tPhasing Window Size, default=250."},
                {_WINDOW_OVERLAP,   0, "", "window_overlap",          Arg::Numeric,  "\t-O [<arg>],\t--window_overlap [<arg>]\tOverlap length between consecutive phasing window, default=60."},
                {TENX,              0, "T", "tenx",                   Arg::None,     "\t-T,\t--tenx\tSpecified for 10X data."},
                {HIC,               0, "H", "hic",                    Arg::None,     "\t-H,\t--hic\tSpecified for HiC data."},
                {PACBIO,            0, "P", "pacbio",                 Arg::None,     "\t-P,\t--pacbio\tSpecified for Pacbio data."},
                {NANOPORE,          0, "N", "nanopore",               Arg::None,     "\t-N,\t--nanopore\tSpecified for Nanopore data."},
                {PROTOCOLS,         0,"p","protocols",                Arg::Required, "\t-p,\t--protocols\t Sequence protocols for corresponding to frags, split with comma, hic,ngs, tenx, pacbio, nanopore is supported"},
                {_HYBRID,           0, "", "hybrid",                  Arg::None,     "\t--hybrid\tSpecified for hybrid data type."},
                {_NEWFORMAT,        0, "", "new_format",              Arg::None,     "\t--new_format\tSpecified when using new_format with extractHair"},
                {_BASEOFFSET,       0, "", "base_offset",             Arg::Numeric,  "\t--base_offset\tQuality of set for read base, default is 33."},
                {_KEEP_PHASING_INFO,0, "", "keep_phasing_info",       Arg::None,     "\t--keep_phasing_info\tSpecified when trying to keep previous phasing info"},
                {0,           0,   0,          0,               0,   0 }
        };


//TODO: messegign system
int main(int argc, char *argv[])
{
    argc -= (argc > 0);argv += (argc > 0);
    option::Stats stats(usage, argc, argv);
    std::vector<option::Option> options(stats.options_max);
    std::vector<option::Option> buffer(stats.buffer_max);
    option::Parser parse(usage, argc, argv, &options[0], &buffer[0]);

    if (parse.error())
        exit(1);

    if (options[HELP] || argc == 0)
    {
        int columns = getenv("COLUMNS") ? atoi(getenv("COLUMNS")) : 80;
        option::printUsage(std::cout, usage);
        exit(1);
    }
    if (options[VCF].arg == nullptr)
    {
        std::cerr << "SpecHap: Error. Missing VCF file, check the usage of specHap.\n";
        option::printUsage(std::cout, usage);
        exit(1);
    }
    if (options[FRAGMENT].arg == nullptr)
    {
        std::cerr << "SpecHap: Error. Missing Fragment file, check the usage of specHap.\n";
        option::printUsage(std::cout, usage);
        exit(1);
    }
    if (options[OUT].arg == nullptr)
    {
        std::cerr << "SpecHap: Error. Missing output file name, check the usage of specHap.\n";
        option::printUsage(std::cout, usage);
        exit(1);
    }
    if (options[TENX] && options[HIC])
    {
        std::cerr << "SpecHap: Error. Operation mode 10X and HiC are specified at the same time.\n";
        exit(1);
    }
    if (options[TENX] && options[STATS].arg == nullptr)
    {
        std::cerr << "SpecHap: Error, require bed formatted fragment status file in 10X mode.\n";
        exit(1);
    }

    if (options[_NEWFORMAT])
        NEW_FORMAT = true;
    if (options[_BASEOFFSET].arg != nullptr)
        BASE_OFFSET = int(atoi(options[_BASEOFFSET].arg));
    if (options[_KEEP_PHASING_INFO])
        KEEP_PS = true;
    if (options[_WINDOW_OVERLAP].arg != nullptr)
        WINDOW_OVERLAP = int(atoi(options[_WINDOW_OVERLAP].arg));
    if (options[_WINDOW_SIZE].arg != nullptr)
        WINDOW_SIZE = int(atoi(options[_WINDOW_SIZE].arg));

    std::string fnbed; 
//    if (options[TENX])
//    {
//        OPERATION = MODE_10X;
//        fnbed = options[STATS].arg;
//    }
//    else if (options[HIC])
//        OPERATION = MODE_HIC;
//    else if (options[PACBIO])
//        OPERATION = MODE_PACBIO;
//    else if (options[NANOPORE])
//        OPERATION = MODE_NANOPORE;
//
//    if (options[_HYBRID])   //hybrid mode, using pacbio/oxford nanopore, ngs and hic.
//    {
//        HYBRID = true;
//        OPERATION = MODE_HYBRID;
//    }
//
    std::string invcf = options[VCF].arg;
    std::string out = options[OUT].arg;
    std::string frag = options[FRAGMENT].arg;
//    multiply frags file support
    std::vector<std::string> frags;
    std::string token;
    std::istringstream iss(options[FRAGMENT].arg);
    while(std::getline(iss, token, ','))
        frags.push_back(token);
//    protocols
    std::istringstream protocols(options[PROTOCOLS].arg);
    while(std::getline(protocols, token, ',')) {
        if (token == PROTOCOL_HIC){
            OPERATIONS.push_back(MODE_HIC);
            HAS_HIC = true;
        }
        else if (token == PROTOCOL_NGS) OPERATIONS.push_back(MODE_PE);
        else if (token == PROTOCOL_TENX) {
            HAS_TENX = true;
            OPERATIONS.push_back(MODE_10X);
            fnbed = options[STATS].arg;
        } else if (token == PROTOCOL_NANOPORE) OPERATIONS.push_back(MODE_NANOPORE);
        else if (token == PROTOCOL_PACBIO) OPERATIONS.push_back(MODE_PACBIO);
        else if (token == PROTOCOL_HYBRID) OPERATIONS.push_back(MODE_HYBRID);
        else {
            std::cerr << "SpecHap: Error, --protocols muste be split with comma, and only hic, ngs, tenx, pacbio and nanopore are supported\n";
            exit(1);
        }
    }
    auto *phaser = new Phaser(invcf, out, frags, fnbed);
    phaser->phasing();
    delete phaser;
    return 0;
}