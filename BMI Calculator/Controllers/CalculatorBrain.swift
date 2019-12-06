//
//  File.swift
//  BMI Calculator
//
//  Created by Myronovych Sasha on 05.12.2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calculateBMI(weight: Float, height: Float){
        let bmiVal = weight / pow(height, 2)
        if bmiVal < 18.5 {
            bmi = BMI(value: bmiVal, color: UIColor.blue, advice: "Underweight")
        }else if bmiVal < 24.9 {
            bmi = BMI(value: bmiVal, color: UIColor.green, advice: "Normal")
        }else {
            bmi = BMI(value: bmiVal, color: UIColor.yellow, advice: "Overweight")

        }
    }
    
    mutating func getBMI() -> String{
        return String(format:"%.1f" ,bmi?.value ?? 0.0)
    }
    
    mutating func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    mutating func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
}
