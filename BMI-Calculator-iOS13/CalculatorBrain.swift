//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Weihua Pan on 12/24/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    
    var bmi : BMI?
    
    mutating func calculateBMI(height: Float,weight: Float){
        let bmiValue = weight / (height * height)
        let color = ["blue": #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), "green": #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), "red": #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)]
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color:  color["blue"]! )
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color:  color["green"]! )
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color:  color["red"]! )
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error!"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}
