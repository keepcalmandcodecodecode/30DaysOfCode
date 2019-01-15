//
//  main.swift
//  LetsReview
//
//  Created by Developer on 15/01/2019.
//  Copyright © 2019 developer. All rights reserved.
//

import Foundation
import Darwin

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)
    
    var resultEven = ""
    var resultOdd = ""
    for i in 0..<string.count {
        if i%2 == 0 {
            resultEven.append(string[string.index(string.startIndex, offsetBy: i)])
        } else {
            resultOdd.append(string[string.index(string.startIndex, offsetBy: i)])
        }
    }
    print(resultEven, terminator: "")
    
    // Print a space
    print(" ", terminator: "")
    print(resultOdd, terminator: "")
    
    // Print a newline
    print()
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}
