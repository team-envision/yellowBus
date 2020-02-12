//
//  teamViewController.swift
//  yellowBus
//
//  Created by Hariom Palkar on 12/02/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import UIKit

class teamViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareButtontapped(_ sender: Any) {
        //Set the default sharing message.
               let message = "Check this amazing app"
               //Set the link to share.
               if let link = NSURL(string: "http://aannuuj.com")
               {
                let objectsToShare = [message,link] as [Any]
                   let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
                activityVC.excludedActivityTypes = [UIActivity.ActivityType.airDrop, UIActivity.ActivityType.addToReadingList]
                self.present(activityVC, animated: true, completion: nil)
               }
        
    }
    
           
    @IBAction func showAlertWithCallMapsMessage(_ sender: Any) {

        let application:UIApplication = UIApplication.shared
                
                        let alert = UIAlertController(title: "Team Envision", message: "We are happy to help", preferredStyle: .alert)
                
                
                        let callAction = UIAlertAction(title: "Call", style: .default, handler: { (action) in
                            let phoneNumber: String = "tel:/7972803790"
                            application.open(URL(string: phoneNumber)!, options: [:], completionHandler: nil)
                        })
                
                        let messageAction = UIAlertAction(title: "Message", style: .default, handler: { (action) in
                            application.open(URL(string: "sms:7972803790")!, options: [:], completionHandler: nil)
                        })
                
                        let mapsAction = UIAlertAction(title: "Maps", style: .destructive, handler: { (action) in
                            
                            let targetURL = URL(string: "https://goo.gl/maps/3Q1Go1FDAtWmhzT58")!
                            application.open(targetURL, options: [:], completionHandler: nil)
                            
                        })
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action:UIAlertAction) in
            print("You've pressed Cancel")
        }
                        alert.addAction(callAction)
                        alert.addAction(messageAction)
                        alert.addAction(mapsAction)
                        alert.addAction(cancel)
               
                        
                        self.present(alert, animated: true, completion: nil)

    }
    
    @IBAction func instagram(_ sender: Any) {
        if let url = URL(string: "www.instagram.com/aannuuj.felix"){
            UIApplication.shared.openURL(url as URL)
    }
    
       }
    
    @IBAction func linkedin(_ sender: Any) {
        if let url = URL(string: "www.instagram.com/aannuuj.felix"){
                UIApplication.shared.openURL(url as URL)
        
    }
    }
     @IBAction func github(_ sender: Any) {
        if let url = URL(string: "www.instagram.com/aannuuj.felix"){
                UIApplication.shared.openURL(url as URL)
        
    }
    }
     @IBAction func facebook(_ sender: Any) {
        if let url = URL(string: "www.instagram.com/aannuuj.felix"){
                UIApplication.shared.openURL(url as URL)
        
     }
     
    
    }
    


}
