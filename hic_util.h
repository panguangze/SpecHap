//
// Created by yyh on 6/25/2019.
//

#ifndef SPECHAP_HIC_UTIL_H
#define SPECHAP_HIC_UTIL_H
#include <set>
#include "type.h"
#include <map>
#include <set>
#include <vector>
#include <stack>
#include <unordered_set>
class HiCLinker
{
public:
    uint start_var_idx;
    uint end_var_idx;
    std::set<uint> var_idx;
    std::set<std::pair<uint, std::pair<int, double>>> hic_info;
    double read_qual;

public:
    explicit HiCLinker(Fragment &fragment);
};

class HiCLinkerContainer
{
public:
    std::multimap<uint, HiCLinker> linker;
    std::map<uint, std::set<uint>> linker_full_map;

public:
    HiCLinkerContainer() = default;
    inline void add_HiC_info(Fragment &fragment)
    {
        uint start_idx = fragment.snps[0].first;
        linker.emplace(start_idx, fragment);
        for (size_t i = 0; i < fragment.snps.size() - 1; ++i) {
            uint currentItem = fragment.snps[i].first;
            uint nextItem = fragment.snps[i + 1].first;
//            if(linker_full_map.count(currentItem) == 0) {
//                linker_full_map[currentItem].emplace(nextItem);
//            }
            linker_full_map[currentItem].emplace(nextItem);
        }
        linker_full_map[fragment.snps.back().first].emplace(fragment.snps.front().first);
//        for(auto &item : fragment.snps) {
//            if(linker_full_map.count(item.first) == 0) {
//                linker_full_map[item.first].emplace(item.first);
//            }
//            for(auto &other_item : fragment.snps){
//                if(item.first == other_item.first) continue;
//                linker_full_map[item.first].emplace(other_item.first);
//            }
//        }
    }
    inline void clear()
    {
        this->linker.clear();
    }
    std::map<uint, std::set<uint>> convert_by_var2idx(std::unordered_map<uint, uint> &var2idx);
    void DFS(uint node, std::unordered_set<uint>& visited, std::vector<uint>& component, std::map<uint, std::set<uint>>& converted_map, std::unordered_map<uint, uint> idx2var);
    std::unordered_map<uint,std::vector<uint>> findConnectedComponents(std::unordered_map<uint, uint> var2idx, std::unordered_map<uint, uint> idx2var);
};

#endif //SPEC_HIC_UTIL_H
