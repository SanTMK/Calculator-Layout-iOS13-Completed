//
//  MathBrain.swift
//  Calculator Layout iOS13
//
//  Created by Santiago Hernandez on 3/14/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation


struct MathBrain {
    
    var inputNumbers: [String] = ib.getMemory().0
    var inputOperators: [String] = ib.getMemory().1
    
    var result: String?
    
    
    
    
    private func findMD() -> [Int] {
        
        var indices: [Int] = []
        
        for (i, mathOperator) in inputOperators.enumerated() {
            if (mathOperator == "÷" || mathOperator == "×"){
                indices.append(i)
            }
        }
        
        return indices
        
    }
    
    private func findAS() -> [Int] {

        var indices: [Int] = []
            
        for (i, mathOperator) in inputOperators.enumerated() {
            if (mathOperator == "+" || mathOperator == "-"){
                indices.append(i)
            }
        }
            
        return indices
    }
    
    private func toInteger(nums: [String]) -> [Double] {
        
        var newArr: [Double] = []
        
        for (_, str) in nums.enumerated() {
            newArr.append(Double(str)!)
        }
        return newArr
        
    }
    
    func doMath() {
        
        var newInputNumbers
        
        if !findMD().isEmpty {
            
            for (i, num) in findMD().enumerated() {
                
            }
            
        }
        
        if !findAS().isEmpty {
            
        }
    }
    
    
    
}
