//
//  main.swift
//  Arrays
//
//  Created by developer on 1/17/19.
//  Copyright © 2019 developer. All rights reserved.
//

import Foundation

extension Array {
    func reversedArray() -> [Int] {
        var result:[Int] = []
        var i = self.count - 1
        while i >= 0 {
            result.append(self[i] as! Int)
            i = i - 1
        }
        return result
    }
    
    func printArray() {
        for i in 0..<self.count {
            print(self[i], separator: "", terminator: " ")
        }
    }
}

[1,4,3,2].reversedArray().printArray()

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let arrTemp = readLine() else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }
arr.reversedArray().printArray()
