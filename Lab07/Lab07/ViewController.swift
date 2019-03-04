//
//  ViewController.swift
//  Lab07
//
//  Created by Jordan Soeder on 3/3/19.
//  Copyright © 2019 Jordan Soeder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var stepperValue: UIStepper!
    @IBOutlet weak var sliderOutput: UILabel!
    @IBOutlet weak var stepperOutput: UILabel!
    
    
   
    @IBAction func changeSlider(_ sender: Any) {
        sliderOutput.text="Slider: "+String(format: "%.0f", sliderValue.value)
    }
    
    
   
    @IBAction func changeStepper(_ sender: Any) {
        stepperOutput.text="Stepper: "+String(format: "%.0f", stepperValue.value)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

