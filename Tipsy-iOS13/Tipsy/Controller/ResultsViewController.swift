//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Weihua Pan on 1/1/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var SettingsLabel: UILabel!
    
    var numberOfPeople:String = "2"
    var tipPercentage:Float = 0.0
    var resultBill:String = "0.0"
    
    override func viewDidLoad() {
        TotalLabel.text = resultBill
        SettingsLabel.text = "Split between \(numberOfPeople) people, with \(Int(tipPercentage*100))% tip."
    }
    
    @IBAction func RecalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
