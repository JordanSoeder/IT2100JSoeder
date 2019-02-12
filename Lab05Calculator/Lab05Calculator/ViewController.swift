//
//  ViewController.swift
//  Lab05Calculator
//
//  Created by Jordan Soeder on 2/12/19.
//  Copyright © 2019 Jordan Soeder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greeting: UILabel!
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBAction func sayHello(_ sender: AnyObject) {
        greeting.text =  firstName.text! +  lastName.text!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

