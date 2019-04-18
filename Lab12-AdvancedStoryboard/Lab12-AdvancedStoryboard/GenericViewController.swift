//
//  GenericViewController.swift
//  Lab12-AdvancedStoryboard
//
//  Created by Jordan Soeder on 4/17/19.
//  Copyright © 2019 Jordan Soeder. All rights reserved.
//

import UIKit

class GenericViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBAction func incrementCount(_ sender: Any) {
        (parent as! CountingNavigationController).pushCount+=1
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let displayCount=(parent as! CountingNavigationController).pushCount
        countLabel.text=String(displayCount)
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
