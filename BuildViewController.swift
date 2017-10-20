//
//  BuildViewController.swift
//  globalstart
//
//  Created by Muluken on 2/24/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit

class BuildViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
        nav?.backgroundColor = UIColor(red: 38.0/255.0, green: 64.0/255.0, blue: 103.0/255.0, alpha: 1.0)
        nav?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.orange]
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func back(_ sender: Any) {
    
        self.dismiss(animated: true, completion: nil)

    }
    @IBAction func takeActio(_ sender: Any) {
        let Alert = UIAlertController(title: "Take Action", message:   "\n1. Make a list of the biblical truths and spiritual disciplines that you want new believers to know and understand. " +
            "\n2. What are ways that your discipleship of teenagers could be modeled after Jesus’ discipleship of His 12? " +
            "\n3. What are creative ways to teach them truths and train them to share their faith? " +
            "\n4. How can you utilize fun activities, discipleship groups, retreats and conferences to help develop disciples of Christ?" , preferredStyle: .alert)
        
        let DismissButton = UIAlertAction(title: "Close", style: .cancel, handler: {
            
            (alert: UIAlertAction!) -> Void in
            
        })
        
        Alert.addAction(DismissButton)
        
        self.present(Alert, animated: true, completion: nil)

    }
    
 
   }
