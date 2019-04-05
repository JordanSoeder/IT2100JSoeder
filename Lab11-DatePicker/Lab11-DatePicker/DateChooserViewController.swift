//
//  DateChooserViewController.swift
//  Lab11-DatePicker
//
//  Created by Jordan Soeder on 4/2/19.
//  Copyright © 2019 Jordan Soeder. All rights reserved.
//

import UIKit

class DateChooserViewController: UIViewController {

    
    @IBAction func setDateTime(_ sender: Any) {
        (presentingViewController as! ViewController).calculateDateDifference(chosenDate: (sender as! UIDatePicker).date as NSDate)
    }
    
    @IBAction func dismissDateChooser(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        (presentingViewController as! ViewController).calculateDateDifference(chosenDate: NSDate())
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
