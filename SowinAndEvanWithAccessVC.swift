//
//  SowinAndEvanWithAccessVC.swift
//  globalstart
//
//  Created by Muluken on 3/28/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit

class SowinAndEvanWithAccessVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
        nav?.backgroundColor = UIColor(red: 38.0/255.0, green: 64.0/255.0, blue: 103.0/255.0, alpha: 1.0)
        nav?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.orange]


        // Do any additional setup after loading the view.
    }

    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
 
    @IBAction func takeAction(_ sender: Any) {
        let Alert = UIAlertController(title: "Take Action", message: "\n1. What are the felt needs and the real needs of the school, the administration and the students? " +
            "\n2. List all the ways that you can serve the school so you can develop relationships and have an opportunity to share the Gospel. " +
            "\n3. Talk to the principal and teachers to offer your help. " +
            "\n4. When you meet students, always ask for their contact information and set up appointments after school to share Christ with them. " +
            "\n5. In classrooms or large events, always have comment cards to get students’ contact information and interest in meeting with you. Set up appointments to share Christ with those who are interested.", preferredStyle: .alert)
        
        let DismissButton = UIAlertAction(title: "Close", style: .cancel, handler: {
            
            (alert: UIAlertAction!) -> Void in
            
        })
        
        Alert.addAction(DismissButton)
        
        self.present(Alert, animated: true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
