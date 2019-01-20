//
//  ViewController.swift
//  Lab02JSoeder
//
//  Created by Jordan Soeder on 1/20/19.
//  Copyright © 2019 Jordan Soeder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myMessage: UILabel
        myMessage=UILabel(frame:CGRect(x:30.0,y:50.0,width:300.0,height:50.0))
        myMessage.font=UIFont.systemFont(ofSize: 48.0)
        myMessage.text="Hello Xcode"
        myMessage.textColor=UIColor(patternImage: UIImage(named: "Background")!)
        view.addSubview(myMessage)
        NSLog("Hello XCode, Again")
        
    }
    
    // MARK: - Method for handling memory management.
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

