//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.

//  Editted by Santiago Hernandez on MAr. 03, 2022
//

import UIKit

var ib = InputBrain()


class ViewController: UIViewController {
    @IBOutlet weak var Output: UILabel!
    
    
    
    @IBAction func Numbers(_ sender: UIButton) {
        
        ib.addToCurrentNum(sender.currentTitle!)
        Output.text = ib.currentNumber
        
    }
    
    @IBAction func Operators(_ sender: UIButton) {
        
        let symbol = sender.currentTitle!
        
        ib.pressedOperator(symbol)
        Output.text = symbol
        
    }
    
    @IBAction func Editors(_ sender: UIButton) {
    
        switch sender.currentTitle {
        case "%":
            Output.text = ib.toPercent(ib.currentNumber)
        case "+/-":
            Output.text = ib.turnNegative(ib.currentNumber)
        case "AC":
            Output.text = ib.allClear()
        default:
            print("error")
        }
        
    }
    
    @IBAction func EqualsBtn(_ sender: UIButton) {
    }
    
}

