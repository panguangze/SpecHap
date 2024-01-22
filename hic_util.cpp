//
// Created by yyh on 6/25/2019.
//

#include "hic_util.h"

HiCLinker::HiCLinker(Fragment &fragment)
{
    start_var_idx = fragment.snps[0].first;
    end_var_idx = fragment.snps.back().first;
    for (auto i : fragment.snps)
    {
        const uint idx = i.first;
        var_idx.insert(idx);
        hic_info.insert(i);
    }
    read_qual = fragment.read_qual;
}
void HiCLinkerContainer::DFS(uint startNode, std::unordered_set<uint>& visited, std::vector<uint>& component, std::map<uint, std::set<uint>>& converted_map, std::unordered_map<uint, uint> idx2var) {
    std::stack<uint> stack;
    stack.push(startNode);
//    std::set<uint> component;
    while (!stack.empty()) {
        uint node = stack.top();
        stack.pop();

        if (visited.insert(node).second) { // If the node was successfully inserted (i.e., not visited)
            component.push_back(idx2var[node]);

            // Iterate through the multimap values for 'node'
            auto range = converted_map.equal_range(node);
            for (auto it = range.first; it != range.second; ++it) {
                for (auto& adjacent : it->second) {
                    stack.push(adjacent); // Push adjacent nodes onto the stack
                }
            }
        }
    }
//    int a = 3;
}

std::map<uint, std::set<uint>> HiCLinkerContainer::convert_by_var2idx(std::unordered_map<uint, uint> &var2idx) {
    std::map<uint, std::set<uint>> converted_map;
    for(auto &item : linker_full_map) {
        for(auto item_second: item.second) {
            converted_map[var2idx[item.first]].emplace(var2idx[item_second]);
        }
    }
    return converted_map;
}

std::unordered_map<uint,std::vector<uint>> HiCLinkerContainer::findConnectedComponents(std::unordered_map<uint, uint> var2idx, std::unordered_map<uint, uint> idx2var) {
    auto converted_map = convert_by_var2idx(var2idx);
    std::unordered_set<uint> visited; // Tracks visited nodes
    std::unordered_map<uint,std::vector<uint>> connectedComponents; // Stores all connected components

    // Start DFS for each key in the multimap
    for (const auto& pair : converted_map) {
//        auto real_first = var2idx[pair.first];
        if (visited.find(pair.first) == visited.end()) {
            std::vector<uint> component;
            DFS(pair.first, visited, component, converted_map, idx2var);
            connectedComponents.emplace(component.front(), component);
        }
    }
    return connectedComponents;
}