//
//  MovementPlanViewController.swift
//  globalstart
//
//  Created by Muluken on 3/26/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit

class MovementPlanViewController: UIViewController {

    @IBOutlet weak var prayerTextInput: UITextField!
    @IBOutlet weak var myhelpText: UITextField!
    @IBOutlet weak var winText: UITextField!
    @IBOutlet weak var buildText: UITextField!
    @IBOutlet weak var sendtext: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
        nav?.backgroundColor = UIColor(red: 38.0/255.0, green: 64.0/255.0, blue: 103.0/255.0, alpha: 1.0)
        nav?.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orange]
        
        getSavedPlans()
        
        
//        myhelpText.textColor = UIColor.lightGray
//        myhelpText.text = "Type your thoughts here..."
        
        // Do any additional setup after loading the view.
    }
    
 
//    func textViewDidBeginEditing (textView: UITextView) {
//        if myhelpText.textColor.textColor == ph_TextColor && myhelpText.isFirstResponder() {
//            myhelpText.text = nil
//            myhelpText.textColor = UIColor.white
//        }
//    }
//    func textViewDidEndEditing (textView: UITextView) {
//        if (myhelpText.text?.isEmpty)! || myhelpText.text! == "" {
//            myhelpText.textColor = UIColor.lightGray
//            myhelpText.text = "Type your thoughts here..."
//        }
//    }
    
    @IBAction func backpa(_ sender: Any) {
         self.dismiss(animated: true, completion: nil)
    }
   
    @IBAction func saveClicked(_ sender: Any) {
        
        
        let myprayerTextInput = prayerTextInput.text
        UserDefaults.standard.set(myprayerTextInput, forKey: "myPrayer")
        let mymyhelpText = myhelpText.text
        UserDefaults.standard.set(mymyhelpText, forKey: "myHelp")
        let mywinText = winText.text
        UserDefaults.standard.set(mywinText, forKey: "myWin")
        let mybuildText = buildText.text
        UserDefaults.standard.set(mybuildText, forKey: "myBuild")
        let mysendtext = sendtext.text
        UserDefaults.standard.set(mysendtext, forKey: "mySend")
        
        let AlertController = UIAlertController(title: "Your Movement Plan", message: "Your Movement Plan Saved Succesfully", preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "Close Alert", style: .default, handler: nil)
        AlertController.addAction(defaultAction)
        
        present(AlertController, animated: true, completion: nil)
        
    }

    @IBAction func onShareClicked(_ sender: Any) {
        
        
        
        let shareText = [" My Movement Plan \n\n Prayer \n Prayer Strategy: \n \(String(describing: prayerTextInput.text!)) \n\n My Help \n Who will hep: \n \(String(describing: myhelpText.text!)) \n\n Win \n Ways to reach students through relationships and evangelism: \n  \(String(describing: winText.text!)) \n\n Build \n How to create a ministry of discipleship: \n  \(String(describing: buildText.text!)) \n\n Send \n How students can lead locally and go globally: \n  \(String(describing: sendtext.text!))  " ]
        
        let activitycVC = UIActivityViewController(activityItems: shareText, applicationActivities: nil)
        activitycVC.popoverPresentationController?.sourceView = self.view
        self.present(activitycVC, animated: true, completion:  nil)
        
    }
    
    func boldTextJosia()-> NSAttributedString
    {
        let string = "My Movement Plan" as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSFontAttributeName:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "My Movement Plan"))
        
        // 4
        return attributedString
    }
   
    func getSavedPlans(){
        
        
        let prayerDefaults = UserDefaults.standard
        
        if let prayer = prayerDefaults.string(forKey: "myPrayer") {
            prayerTextInput.text = prayer
        }
        if let help = prayerDefaults.string(forKey: "myHelp") {
            myhelpText.text = help
        }
        if let win = prayerDefaults.string(forKey: "myWin") {
            winText.text = win
        }
        if let build = prayerDefaults.string(forKey: "myBuild") {
            buildText.text = build
        }
        if let send = prayerDefaults.string(forKey: "mySend") {
            sendtext.text = send
        }
    }
}
