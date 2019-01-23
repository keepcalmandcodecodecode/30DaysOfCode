//
//  main.swift
//  DictionariesAndMaps
//
//  Created by developer on 1/23/19.
//  Copyright © 2019 developer. All rights reserved.
//

import Foundation

guard let countTemp = readLine() else { fatalError("Bad input") }

guard let count = Int(countTemp.trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

var map: [String: String] = [:]
for _ in 0..<count {
    guard let keyValue = readLine() else { fatalError("Bad Input")}
    let keyValueArray = keyValue.split(separator: " ").map({String($0)})
    map[keyValueArray[0]] = keyValueArray[1]
}

while let query = readLine() {
    if let unwrappedValue = map[query] {
        print("\(query)=\(unwrappedValue)")
    } else {
        print("Not found")
    }
}
