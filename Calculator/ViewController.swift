//
//  ViewController.swift
//  Calculator
//
//  Created by Shuhua Song on 11/9/19.
//  Copyright © 2019 Shuhua Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true) //dismiss the keyboard
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0
        //Calculate the tip and total
        //let tipPercentages = [0.15, 0.18, 0.2]
        
        let tipPercent: Double
        switch tipControl.selectedSegmentIndex {
        case 0:
            tipPercent = 0.15;
        case 1:
            tipPercent = 0.18;
        case 2:
            tipPercent = 0.20;
        default:
            preconditionFailure("Unexpected index.")
        }
        
        let tip = bill * tipPercent
        let total = bill + tip
        //Update the tip and total lable
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    
    }
    
    
}

