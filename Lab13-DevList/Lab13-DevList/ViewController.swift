//
//  ViewController.swift
//  Lab13-DevList
//
//  Created by Jordan Soeder on 4/30/19.
//  Copyright © 2019 Jordan Soeder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return kSectionCount
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case mobileSection: return mobileDevelopers.count
        case webSection: return webDevelopers.count
        default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
            case mobileSection: return "Mobile"
            case webSection: return "Web"
            default: return "Unknown"
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "developerCell")! as UITableViewCell
        switch (indexPath.section) {
        case mobileSection: cell.textLabel!.text=mobileDevelopers[indexPath.row]
        case webSection: cell.textLabel!.text=webDevelopers[indexPath.row]
        default: cell.textLabel!.text="Unknown"
        }
        let developerImage: UIImage=UIImage(named: cell.textLabel!.text!)!; cell.imageView!.image=developerImage
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var developerMessage: String
        
        switch indexPath.section {
        case mobileSection: developerMessage = "You chose the mobile developer - \(mobileDevelopers[indexPath.row], mobileDevelopersTitle[indexPath.row], mobileDevelopersDetails[indexPath.row])"
        case webSection: developerMessage = "You chose the web developer - \(webDevelopers[indexPath.row], webDevelopersTitle[indexPath.row], webDevelopersDetails[indexPath.row])"
        default: developerMessage = "I have no idead what you chose?!"
        }
        
        let alertController=UIAlertController(title: "Developer Selected", message:
            developerMessage, preferredStyle: UIAlertController.Style.alert)
        let defaultAction=UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel, handler: nil)
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
    
    }
    
    
    
    
    let kSectionCount: Int = 2
    let mobileSection: Int = 0
    let webSection: Int = 1
    
    let webDevelopers: [String] = ["Al Dente", "Armand Hammer", "Barry Cade", "Cara Van"]
    let mobileDevelopers: [String] = ["Ginger Ayle", "June Bugg", "Iona Ford", "Sue Flay",
                                      "Tim Burr", "Will Wynn"]
    
    let webDevelopersTitle: [String] = ["Full Stack", "ASP.NET", "PHP", "Node.js", "Angular",
        "and React"]
    let mobileDevelopersTitle: [String] = ["iOS with Swift", "iOS and Android", "iOS with Objective-C", "iOS with Swift and Objective-C", "Android", "Ionic"]
    
    let webDevelopersDetails: [String] = ["A full stack developer capable of front-end and back-end development in a Windows environment.", "Back-end developer focused on database applications using a variety of DBMSs.", "Several years experience writing PHP with database connectvity using Linux and Windows.", "Newby developer with great demonstration of skills using Node.js and Angular. Some recent work in React."]
    
    let mobileDevelopersDetails: [String] = ["12 apps developed using Swift and Xcode", "Senior app developer with experience in Android and iOS development", "Maintains large code base still in Objective-C. Working to learn Swift.", "Staff expert in Objective-C. Lead efforts to upgrade from Objective-C to Swift.", "Android expert with experience raning to days of Eclipse to current Android Studio versions.", "Prototyping go-to. Uses Ionic to spin up fast prototypes for all apps."]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

