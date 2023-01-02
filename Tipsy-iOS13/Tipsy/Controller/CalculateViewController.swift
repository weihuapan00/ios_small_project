//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        //end textediting
        billTextField.endEditing(true)
        
        //make all buttons unselected
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        // selected the press button
        sender.isSelected = true
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
    }
    
    func getTipPercentage() -> Float {
        if (zeroPctButton.isSelected){
            return 0.0
        }else if tenPctButton.isSelected {
            return 0.1
        }else{
            return 0.2
        }
    }
    
    func calculateTip() -> Float{
        var amount:Float
        let tipPercentage = getTipPercentage()
        
        amount = (Float(billTextField.text!) ?? 123.56) / (Float(splitNumberLabel.text!) ?? 2) * (1+tipPercentage)
        
        return amount
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "GoToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.numberOfPeople = splitNumberLabel.text!
            destinationVC.tipPercentage = getTipPercentage()
            destinationVC.resultBill = String(format: "%.2f", calculateTip())
        }


        
    }
    
}

