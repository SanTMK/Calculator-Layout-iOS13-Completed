//
//  MathBrain.swift
//  Calculator Layout iOS13
//
//  Created by Santiago Hernandez on 3/6/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

struct MathBrain {
//    Handles the main computations and logic needed in the calculator
    
    private var memory: [String] = []
    private var opperatorsPressed: [String] = []
    
    var currentNumber: String = ""
    
    func getMemory() -> ([String],[String]) {
//        retrieves a array [String] with the current numbers submited by the user
        return (memory, opperatorsPressed)
    }
    
    mutating func addToCurrentNum(_ btnTittle: String) {
//        Identifies the number (between 0-9 and ".") pressed and appends it to memory array
        currentNumber.append(btnTittle)
        
        }
    mutating func pressedOperator(_ btnTittle: String) {
//        Sets the operatorPressed value to true, Appends current number to memory and then clears current Number
        
        memory.append(currentNumber)
        currentNumber = ""
        opperatorsPressed.append(btnTittle)
        
    }
    
    mutating func turnNegative(_ num: String) -> String {
        var num = num
        
        var numDouble = Double(num)!
        numDouble *= -1.0
        
        num = String(format: "%f", numDouble)
        
        currentNumber = num
        return num
    }
    
}


