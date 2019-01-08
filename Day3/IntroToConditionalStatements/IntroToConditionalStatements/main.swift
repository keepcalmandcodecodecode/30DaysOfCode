//
//  main.swift
//  IntroToConditionalStatements
//
//  Created by developer on 1/8/19.
//  Copyright © 2019 developer. All rights reserved.
//

import Foundation

func isWeird(n: Int) -> Bool {
    if n%2 == 1 {
        return true
    }
    if n >= 2 && n <= 5 {
        return false
    }
    if n >= 6 && n <= 20 {
        return true
    }
    return false
}

func message(isWeird: Bool) -> String {
    if isWeird {
        return "Weird"
    } else {
        return "Not Weird"
    }
}

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }
print(message(isWeird: (isWeird(n: N))))
