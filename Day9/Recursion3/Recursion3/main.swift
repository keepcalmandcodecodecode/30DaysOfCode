//
//  main.swift
//  Recursion3
//
//  Created by developer on 1/24/19.
//  Copyright © 2019 developer. All rights reserved.
//

import Foundation

// Complete the factorial function below.
func factorial(n: Int) -> Int {
    if n == 0 || n == 1 {
        return 1
    } else {
        return n * factorial(n: n-1)
    }
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

let result = factorial(n: n)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)