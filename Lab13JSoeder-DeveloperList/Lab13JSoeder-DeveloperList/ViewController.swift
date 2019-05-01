//
//  ViewController.swift
//  Lab13JSoeder-DeveloperList
//
//  Created by Jordan Soeder on 4/21/19.
//  Copyright © 2019 Jordan Soeder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case kWebSection:
            return webDevelopers.count
        case kMobileSelection:
            return mobileDevelopers.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell =
            tableView.dequeueReusableCell(withIdentifier: "developerCell")!
        as UITableViewCell
        switch (indexPath.section) {
        case kMobileSelection: cell.textLabel!.text=mobileDevelopers[indexPath.row]
        case kWebSection: cell.textLabel!.text=webDevelopers[indexPath.row]
        default: cell.textLabel!.text="Unknown"
        }
        let developerImage: UIImage=UIImage(named: cell.textLabel!.text!)!; cell.imageView!.image=developerImage
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return kSectionCount
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case kMobileSelection:
            return "Mobile"
        case kWebSection:
            return "Web"
        default:
            return "Unknown"
        }
    }
    
    
    let kSectionCount: Int = 2
    let kWebSection: Int = 0
    let kMobileSelection: Int = 1
    
    let webDevelopers: [String] = ["Al Dente", "Armand Hammer", "Barry Cade", "Cara Van"]
    let mobileDevelopers: [String] = ["Ginger Ayle", "June Bugg", "Iona Ford", "Sue Flay",
                                      "Tim Burr", "Will Wynn"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

