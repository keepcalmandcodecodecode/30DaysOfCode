//
//  main.swift
//  Loops
//
//  Created by Developer on 15/01/2019.
//  Copyright © 2019 developer. All rights reserved.
//

import Foundation

func multiplicationTable(n: Int) {
    for i in 1..<11 {
        print("\(n) x \(i) = \(n*i)")
    }
}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }
multiplicationTable(n: n)
