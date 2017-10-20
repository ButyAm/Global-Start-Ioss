//
//  SowinAndEvanWithNoAccessVC.swift
//  globalstart
//
//  Created by Muluken on 3/28/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit

class SowinAndEvanWithNoAccessVC: UIViewController {

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
        let Alert = UIAlertController(title: "Take Action", message: "\n1. Where are places that you could go to be around teenagers? Where do they gather together?  Where do they spend their free time? In what groups outside of school do they participate? What are creative ways to meet students?  " +
            "\n2. Go to where students are and develop relationships, praying that God will raise up spiritually interested students.  " +
            "\n3. Where can you find Christian teenagers who you can challenge and train to reach out to their friends at school? " +
            "\n4. What churches can you work alongside or partner with to train their students? " +
            "\n5. What activities and outreaches can you have that Christian students can invite their unbelieving friends to attend?", preferredStyle: .alert)
        
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
