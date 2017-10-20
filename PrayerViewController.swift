//
//  PrayerViewController.swift
//  globalstart
//
//  Created by Muluken on 2/24/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit

class PrayerViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
        nav?.backgroundColor = UIColor(red: 38.0/255.0, green: 64.0/255.0, blue: 103.0/255.0, alpha: 1.0)
        nav?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.orange]
        
    
    }

  
    @IBAction func back(_ sender: Any) {
    
        self.dismiss(animated: true, completion: nil)

    }
    
    @IBAction func takeActio(_ sender: Any) {
        let Alert = UIAlertController(title: "Take Action", message:  "1. When you see the needs of students, how does it motivate you to pray? " + "\n\n 2. As you trust God to start and build a student movement, what prayer strategy will you develop?", preferredStyle: .alert)
        
        let DismissButton = UIAlertAction(title: "Close", style: .cancel, handler: {
            
            (alert: UIAlertAction!) -> Void in
            
        })
        
        Alert.addAction(DismissButton)
        
        self.present(Alert, animated: true, completion: nil)

    }
    


}
