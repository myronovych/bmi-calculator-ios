//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Myronovych Sasha on 26.11.2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    var bmiVal: String?
    var advice: String?
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiVal
        adviceLabel.text = advice
        background.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }

}
