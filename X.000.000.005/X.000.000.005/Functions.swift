//
//  Functions.swift
//  X.000.000.005
//
//  Created by Develop on 15.08.21.
//

import Foundation

func unwrapText(_ value: String) -> Double {
    return Double(value) ?? 0.0
}

func unwrapNumber(_ value: Double) -> String {
    return String(format: "%.2f", value)
}

func roundUp(_ value: Double) -> Double {
    return ceil(value)
}

func roundDown(_ value: Double) -> Double {
    return floor(value)
}

func roundedString(_ value: String) -> String {
    let a = Double(value) ?? 0.0
    return String(format: "%.2f", a)
}

func roundedStringSplit(_ value: String) -> String {
    guard let a = Int(value),
          a >= 1
    else {
        return "1"
    }
    return String(a)
}

func roundedStringTip(_ value: String) -> String {
    guard let a = Int(value)
    else {
        return "0"
    }
    return String(a)
}

func generalConditions(_ value: String) -> Bool {
    guard let a = Double(value),
          a > 0
    else { return false }
    return true
}

func splitTest(_ value: String) -> Bool {
    guard let a = Int(value),
          a > 0
    else { return false }
    return true
}

