//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

var mb = MathBrain()


class ViewController: UIViewController {
    @IBOutlet weak var Output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func Numbers(_ sender: UIButton) {
        
        mb.addToCurrentNum(sender.currentTitle!)
        Output.text = mb.currentNumber
        
        
    }
    
    @IBAction func Operators(_ sender: UIButton) {
        
        let symbol = sender.currentTitle!
        
        mb.pressedOperator(symbol)
        Output.text = symbol
        
    }
    
    @IBAction func Editors(_ sender: UIButton) {
    
        switch sender.currentTitle {
        case "%":
            Output.text = mb.toPercent(mb.currentNumber)
        case "+/-":
            Output.text = mb.turnNegative(mb.currentNumber)
        case "AC":
            Output.text = mb.allClear()
        default:
            print("error")
        }
        
    }
    
    
    
    
    
    @IBAction func EqualsBtn(_ sender: UIButton) {
    }
    

}

