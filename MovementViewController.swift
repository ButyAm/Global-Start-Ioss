//
//  MovementViewController.swift
//  globalstart
//
//  Created by Muluken on 2/24/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit

class MovementViewController: UIViewController {

    
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

  
    @IBAction func takeAcion(_ sender: Any) {
        let Alert = UIAlertController(title: "Take Action", message: "\n1. Teenagers can have a significant impact in their high schools. Will you pray for students who will come to Christ, be discipled and leave a lasting impact in their schools?  " +
            "\n2. Teenagers can leave their high schools and make an impact on their college campuses. Will you pray and trust God to develop disciples who will continue to grow and disciple others on their college campuses?  " +
            "\n3. Teenagers can be a part of helping fulfill the Great Commission for a lifetime. Will you pray and trust God to develop lifetime laborers who will go into all the world and make disciples of all nations?" , preferredStyle: .alert)
        
        let DismissButton = UIAlertAction(title: "Close", style: .cancel, handler: {
            
            (alert: UIAlertAction!) -> Void in
            
        })
        
        Alert.addAction(DismissButton)
        
        self.present(Alert, animated: true, completion: nil)
    }
  
}
