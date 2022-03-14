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
    
    
    
    
    private func findIndicesMD() -> [Int] {
        
        var indices: [Int] = []
        
        for (i, mathOperator) in inputOperators.enumerated() {
            if (mathOperator == "÷" || mathOperator == "×"){
                indices.append(i)
            }
        }
        
        return indices
        
    }
    
    private func findIndicesAS() -> [Int] {

        var indices: [Int] = []
            
        for (i, mathOperator) in inputOperators.enumerated() {
            if (mathOperator == "+" || mathOperator == "-"){
                indices.append(i)
            }
        }
            
        return indices
    }
    
    private func toTypeDouble(nums: [String]) -> [Double] {
        
        var newArr: [Double] = []
        
        for (_, str) in nums.enumerated() {
            newArr.append(Double(str)!)
        }
        return newArr
        
    }
    
    func doMath() {
        
        var newInputNumbers = toTypeDouble(nums: inputNumbers)
        
        if !findIndicesMD().isEmpty {
            
            for (_, num) in findIndicesMD().enumerated() {
                
                newInputNumbers[num]
                
            }
            
        }
        
        if !findIndicesAS().isEmpty {
            
        }
    }
    // string to expression by Martin R. (2014) https://stackoverflow.com/a/24706338/16824128
    func pemdas(equation: NSString) -> Double {
//        var equation:NSString = "5*(2.56-1.79)-4.1"

        let expr = NSExpression(format: equation as String)
        if let result = expr.expressionValue(with: nil, context: nil) as? Double {
            return result // -0.25
        } else {
            return 0.0
        }
    }
    
    
}
