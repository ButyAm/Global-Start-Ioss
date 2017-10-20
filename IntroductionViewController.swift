//
//  IntroductionViewController.swift
//  globalstart
//
//  Created by Muluken on 2/20/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit

class IntroductionViewController: UIViewController
{
    
    
//    @IBOutlet weak var introText1: UITextView!
//    @IBOutlet weak var introText2: UITextView!
//    @IBOutlet weak var introText3: UITextView!
//    @IBOutlet weak var introText4: UITextView!
//    @IBOutlet weak var introText5: UITextView!
//    @IBOutlet weak var introText6: UITextView!
//    @IBOutlet weak var introText7: UITextView!
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // scroll.contentInset = UIEdgeInsetsMake(0, 0, 300, 0)
        
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
        nav?.backgroundColor = UIColor(red: 38.0/255.0, green: 64.0/255.0, blue: 103.0/255.0, alpha: 1.0)
        nav?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.orange]
        
//        introText1.text = "Can you imagine a day when the teenagers of your country would have the opportunity to ... "
//        introText2.text = " => Hear the gospel"
//        introText3.text = " => Respond by faith"
//        introText4.text = " => Walk with God"
//        introText5.text = " => Become spiritual multipliers"
//        introText6.text = "If that is your desire or if you dare to believe God to raise up teenagers to become leaders on their campuses and to be involved in helping reach the world, then get on your knees and pray!"
//        introText7.text = "With faith and dependence on the Lord, take these principles and use them in your country and watch what God will do in and through the lives of teenagers."
//        
        
        

    }
    
    @IBAction func back(_ sender: Any) {
    
    
    
        self.dismiss(animated: true, completion: nil)
    }
  
    @IBAction func share(_ sender: Any) {
    }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
