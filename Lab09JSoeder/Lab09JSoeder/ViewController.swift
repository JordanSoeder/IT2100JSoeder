//
//  ViewController.swift
//  Lab09JSoeder
//
//  Created by Jordan Soeder on 3/17/19.
//  Copyright © 2019 Jordan Soeder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userOutput: UIButton!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var favoriteLanguage: UILabel!
    @IBOutlet weak var selectedAction: UITextView!
    
    
    
    @IBAction func showAlertWithFields(_ sender: Any) {
        let alertController = UIAlertController(title: "Enter Name and Email",
            message: "Use textFields for input",
            preferredStyle: UIAlertController.Style.alert)
        
        
        alertController.addTextField(configurationHandler: {(textField: UITextField)in
            textField.placeholder="Name"
            textField.keyboardType=UIKeyboardType.emailAddress
        })
        
        alertController.addTextField(configurationHandler: {(textField: UITextField)in
            textField.placeholder="Email Address"
            textField.keyboardType=UIKeyboardType.emailAddress
        })
        
        let defaultAction = UIAlertAction(title: "Ok",
        style: UIAlertAction.Style.default,
        handler: {(alertAction: UIAlertAction)in
        let _: String = alertController.textFields![0].text!
            self.userName.text=" '\(String(describing: self.userName))' "
        let _: String = alertController.textFields![0].text!
            self.userEmail.text=" '\(String(describing: self.userEmail))' "
        })
        
        
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
    }
    
   
    
    @IBAction func showAlertWithOptions(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Alert with Buttons selected",
            message: "This starts using Fields for multiple optinos",
            preferredStyle: UIAlertController.Style.alert)
        
        let nowAction = UIAlertAction(title:"C#",
            style: UIAlertAction.Style.default,
            handler: {(alertAction: UIAlertAction)in
                self.favoriteLanguage.text="C#"
                
        })
        
        let laterAction = UIAlertAction(title:"Java",
            style: UIAlertAction.Style.default,
            handler: {(alertAction: UIAlertAction)in
                self.favoriteLanguage.text="Java"
            
        })
        
        let cancelAction = UIAlertAction(title:"Swift",
            style: UIAlertAction.Style.default,
            handler: {(alertAction: UIAlertAction)in
                self.favoriteLanguage.text="Swift"
            
        })
        
        alertController.addAction(nowAction)
        alertController.addAction(laterAction)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    
    
    
    @IBAction func showActionSheet(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Action Sheet",
            message: "Select a follow up",
            preferredStyle: UIAlertController.Style.actionSheet)
        
        let sendInformation = UIAlertAction(title:"Send Information",
            style: UIAlertAction.Style.default,
            handler: {(alertAction: UIAlertAction)in
                self.selectedAction.text="Thank you! We will Send information about "+self.favoriteLanguage.text!
                                        
        })
        
        let doNotSendInformation = UIAlertAction(title:"Do not send Information",
            style: UIAlertAction.Style.default,
            handler: {(alertAction: UIAlertAction)in
                self.selectedAction.text="Thank you!"
                                            
        })
        
        let cancelAction = UIAlertAction(title:"Cancel",
            style: UIAlertAction.Style.cancel,
            handler: {(alertAction: UIAlertAction)in
                self.selectedAction.text="Pressed Cancel"
                                            
        })
        
        alertController.addAction(sendInformation)
        alertController.addAction(doNotSendInformation)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

