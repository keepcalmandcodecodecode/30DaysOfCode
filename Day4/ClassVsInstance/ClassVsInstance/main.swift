//
//  main.swift
//  ClassVsInstance
//
//  Created by Developer on 14/01/2019.
//  Copyright © 2019 developer. All rights reserved.
//

import Foundation

class Person {
    var age: Int = 0
    
    init(initialAge: Int) {
        self.age = initialAge
        if age <= 0 {
            print("Age is not valid, setting age to 0.")
        }
    }
    
    func amIOld() {
        if self.age < 13 {
            print("You are young.")
        } else if self.age < 18 {
            print("You are a teenager.")
        } else {
            print("You are old.")
        }
    }
    
    func yearPasses() {
        self.age = age + 1
    }
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let age = Int(readLine()!)!
    let p = Person(initialAge: age)
    
    p.amIOld()
    
    for i in 1...3 {
        p.yearPasses()
    }
    
    p.amIOld()
    
    print("")
}
