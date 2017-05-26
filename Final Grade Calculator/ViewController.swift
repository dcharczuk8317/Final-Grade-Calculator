//
//  ViewController.swift
//  Final Grade Calculator
//
//  Created by student3 on 10/11/16.
//  Copyright © 2016 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentGradeTextField: UITextField!
    @IBOutlet weak var desiredGradeTextField: UITextField!
    @IBOutlet weak var currentGradeWorthTextField: UITextField!
 
    @IBOutlet weak var finalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        finalLabel.text = ""
    }
    
    @IBAction func calculateOnPressed(_ sender: UIButton) {
    let a = Double(currentGradeTextField.text!)!
    let finalWorth = 100 - Double(currentGradeWorthTextField.text!)!
        
    
    let currentPercentage = Double(currentGradeWorthTextField.text!)! / 100
    let current = a * Double(currentPercentage)
    let desired = Double(desiredGradeTextField.text!)!
    let component3 = (desired) - (current)
    let component4 = (component3) / (finalWorth) * 100
    
    
    finalLabel.text = String(component4)
    }
   
    @IBAction func clearOnPressed(_ sender: UIButton)
    {
        finalLabel.text = ""
        currentGradeTextField.text = ""
        desiredGradeTextField.text = ""
        currentGradeWorthTextField.text = ""
        
    }

}

