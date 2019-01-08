//
//  main.swift
//  Operators
//
//  Created by developer on 1/8/19.
//  Copyright © 2019 developer. All rights reserved.
//

import Foundation

// Complete the solve function below.
func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
    let totalCost = meal_cost*(Double(tip_percent)/100.0 + Double(tax_percent)/100.0+1)
    print(Int(round(totalCost)))
}

guard let meal_cost = Double((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let tip_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let tax_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

solve(meal_cost: meal_cost, tip_percent: tip_percent, tax_percent: tax_percent)
