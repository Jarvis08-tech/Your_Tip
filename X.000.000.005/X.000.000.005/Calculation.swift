//
//  Calculation.swift
//  X.000.000.005
//
//  Created by Develop on 15.08.21.
//

import Foundation

struct tipcalculation {
    let price: Double
    
    init(_ price: String) {
        self.price = unwrapText(price)
    }
    
    func total(_ percent: String) -> String {
        let factor = (unwrapText(percent) / 100) + 1.0
        return unwrapNumber(price * factor)
    }
    
    func tip(_ percent: String) -> String {
        let factor = (unwrapText(percent) / 100)
        return unwrapNumber(price * factor)
    }
    
    func totalSplit(_ percent: String, _ split: String) -> String {
        let split = unwrapText(split)
        let factor = (unwrapText(percent) / 100) + 1.0
        return unwrapNumber((price * factor)/split)
    }
    
    func totalUp(_ percent: String) -> String {
        let factor = (unwrapText(percent) / 100) + 1.0
        let rounded = roundUp(price * factor)
        return unwrapNumber(rounded)
    }
    
    func tipUp(_ percent: String) -> String {
        let factor = (unwrapText(percent) / 100) + 1.0
        let rounded = roundUp(price * factor)
        let difference = rounded - price
        return unwrapNumber(difference)
    }
    
    func totalUpSplit(_ percent: String, _ split: String) -> String {
        let split = unwrapText(split)
        let factor = (unwrapText(percent) / 100) + 1.0
        let rounded = roundUp(price * factor)
        return unwrapNumber(rounded/split)
    }
    
    func totalDown(_ percent: String) -> String {
        let factor = (unwrapText(percent) / 100) + 1.0
        let rounded = roundDown(price * factor)
        return unwrapNumber(rounded)
    }
    
    func tipDown(_ percent: String) -> String {
        let factor = (unwrapText(percent) / 100) + 1.0
        let rounded = roundDown(price * factor)
        let difference = rounded - price
        return unwrapNumber(difference)
    }
    
    func totalDownSplit(_ percent: String, _ split: String) -> String {
        let split = unwrapText(split)
        let factor = (unwrapText(percent) / 100) + 1.0
        let rounded = roundDown(price * factor)
        return unwrapNumber(rounded/split)
    }
    
}
