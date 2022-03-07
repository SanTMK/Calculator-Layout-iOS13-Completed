//
//  MathBrain.swift
//  Calculator Layout iOS13
//
//  Created by Santiago Hernandez on 3/6/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

///         Handles the main computations and logic needed in the calculator
struct MathBrain {
    
    private var memory: [String] = []
    private var opperatorsPressed: [String] = []
    
    var currentNumber: String = ""
    
    
    
///        retrieves a array [String] with the current numbers submited by the user and operator buttons pressed ([memory], [operatorsPressed])
    func getMemory() -> ([String],[String]) {

        return (memory, opperatorsPressed)
    }
    
///        Identifies the number (between 0-9 and ".") pressed and appends it to memory array
    mutating func addToCurrentNum(_ btnTittle: String) {

        currentNumber.append(btnTittle)
        
        }
    
///         appends current number to memory, clears it, and appends the opperator pressed
    mutating func pressedOperator(_ btnTittle: String) {
        
        memory.append(currentNumber)
        currentNumber = ""
        opperatorsPressed.append(btnTittle)
        
    }
    
///        multiplies the current number by -1
    mutating func turnNegative(_ num: String) -> String {
        
        var num = num
        
        var numDouble = Double(num)!
        numDouble *= -1.0
        
        num = String(format: "%f", numDouble)
        num = cleanString(num)
        
        currentNumber = num
        return num
    }
    
///        Divides the current number by 100
    mutating func toPercent(_ num: String) -> String {

        var num = num
        
        let percentage = 0.01 * Double(num)!
        num = String(format: "%f", percentage)
        num = cleanString(num)
        currentNumber = num
        
        return num
    }
    
///        Sets the operatorPressed value to true, Appends current number to memory and then clears current Number
    mutating func allClear() -> String {
        currentNumber = ""
        
        return "0"
    }
    
///         Erases the trailing zeros leftover from converting Double --> String
    private func cleanString(_ str: String) -> String {

        
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


