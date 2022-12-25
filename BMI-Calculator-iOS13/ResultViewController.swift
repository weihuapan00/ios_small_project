//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Weihua Pan on 12/24/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var AdviceLabel: UILabel!
    @IBOutlet weak var BackgroundView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        BMILabel.text = bmiValue
        AdviceLabel.text = advice
        BackgroundView.backgroundColor = color
    }
    

    @IBAction func RecalculateButton(_ sender: UIButton) {
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
