//
//  ViewController.swift
//  Lab06FindReplace
//
//  Created by Jordan Soeder on 2/18/19.
//  Copyright © 2019 Jordan Soeder. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    @IBOutlet weak var find: UITextField!
    @IBOutlet weak var replace: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func findReplace(sender: Any) {
        let textView = "C is cool language with a lot of shortcuts. It's a lot easier to work with than B. I like to develop my programs using vi. vi is a modern development tool that aids in development in numerous ways. vi helps us to find problems in our code and even to debug our apps. We can use vi over a telnet session running UNIX"
        let find = "C "
        let replace = "B"
        _ = textView.replacingOccurrences(of: find, with: replace)
    }
    
    
    @IBAction func hideKeyboard(_ sender: Any) {
        find.resignFirstResponder()
        replace.resignFirstResponder()
        textView.resignFirstResponder()
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

