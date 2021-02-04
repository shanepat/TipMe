//
//  ViewController.swift
//  Prework
//
//  Created by Shane Patra on 2021/1/25.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var amountPerPersonLabel: UILabel!
    @IBOutlet weak var partySizeTextField: UITextField!
    @IBOutlet weak var memoButton: UIButton!
    

    override func viewWillAppear(_ animated: Bool) {

        tipControl.setTitle(String(Int(tip1))+"%", forSegmentAt: 0)
        tipControl.setTitle(String(Int(tip2))+"%", forSegmentAt: 1)
        tipControl.setTitle(String(Int(tip3))+"%", forSegmentAt: 2)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        var partySize = Double(partySizeTextField.text!) ?? 1

        if (Int(partySize) == 0){
            partySize = 1.00
        }
        
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        // Get the result from these calculation
        let tipPercentages = [tip1/100, tip2/100, tip3/100]
        let tip = bill * Double(tipPercentages[tipControl.selectedSegmentIndex])
        let amountPerPerson = (bill + tip)/Double(partySize)
        
        
        // Update output display
        tipAmountLabel.text = String(format: "$%.2f", tip)
        partySizeTextField.text = String(Int(partySize))
        amountPerPersonLabel.text = String(format: "$%.2f", amountPerPerson)
    }
    
}

