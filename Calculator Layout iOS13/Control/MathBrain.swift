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
//        multiplies the current number by -1
        
        var num = num
        
        var numDouble = Double(num)!
        numDouble *= -1.0
        
        num = String(format: "%f", numDouble)
        num = cleanString(num)
        
        currentNumber = num
        return num
    }
    
    mutating func toPercent(_ num: String) -> String {
//        Divides the current number by 100
        var num = num
        
        let percentage = 0.01 * Double(num)!
        num = String(format: "%f", percentage)
        num = cleanString(num)
        currentNumber = num
        
        return num
    }
    
    mutating func allClear() -> String {
        currentNumber = ""
        
        return "0"
    }
    
    private func cleanString(_ str: String) -> String {
//        erases the trailing zeros leftover from converting Double -> String
        
        var strArray = Array(str)
        if strArray.contains(".") {
            
            strArray.reverse()
            
            while (strArray[0] == "0") {
                strArray.removeFirst(1)
            }
            
            strArray.reverse()
            return (String(strArray))
        } else {
            
            return (String(strArray))

        }
    }
}


