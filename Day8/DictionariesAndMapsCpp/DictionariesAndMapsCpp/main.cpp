//
//  main.cpp
//  DictionariesAndMapsCpp
//
//  Created by Developer on 25/01/2019.
//  Copyright © 2019 developer. All rights reserved.
//

#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <map>
#include <sstream>
using namespace std;

int main() {
    map<string, string> phonesDict;
    int n;
    cin >> n;
    for (int i = 0; i < n; i++) {
        string key;
        string value;
        string input;
        cin >> key >> value;
        phonesDict[key] = value;
    }
    string query;
    while(cin >> query) {
        if (phonesDict.count(query)!=0) {
            cout << query << "=" << phonesDict[query] << endl;
        } else {
            cout << "Not found" << endl;
        }
        
    }
    return 0;
}
