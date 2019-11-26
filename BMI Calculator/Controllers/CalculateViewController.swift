//
//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    var bmiVal = "0.0"
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = (String(format: "%.2f", sender.value)) + "m"
        heightLabel.text =  height   }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\((Int)(sender.value)) Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bmi = weightSlider.value / pow(heightSlider.value, 2)
        bmiVal = String(format:"%.1f" ,bmi)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiVal = bmiVal
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

