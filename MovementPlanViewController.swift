//
//  MovementPlanViewController.swift
//  globalstart
//
//  Created by Muluken on 3/26/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit

class MovementPlanViewController: UIViewController, UITextFieldDelegate,UITextViewDelegate {

    @IBOutlet weak var prayerText: UITextView!
    @IBOutlet weak var helpText: UITextView!
    @IBOutlet weak var myWinText: UITextView!
    @IBOutlet weak var myBuildText: UITextView!
    //  @IBOutlet weak var prayerTextInput: UITextField!
    @IBOutlet weak var mySendText: UITextView!
    //  @IBOutlet weak var myhelpText: UITextField!
    
    
   // @IBOutlet weak var winText: UITextField!
 //   @IBOutlet weak var buildText: UITextField!
  //  @IBOutlet weak var sendtext: UITextField!

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
        nav?.backgroundColor = UIColor(red: 38.0/255.0, green: 64.0/255.0, blue: 103.0/255.0, alpha: 1.0)
        nav?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.orange]
        
        getSavedPlans()
        
        
//        prayerText.text = "Type your prayer strategy"
        prayerText.textColor = UIColor.black
//        helpText.text = "Type who will help"
        helpText.textColor = UIColor.black
//        myWinText.text = "Type how to win"
        myWinText.textColor = UIColor.black
//        myBuildText.text = "Type how to build"
        myBuildText.textColor = UIColor.black
//        mySendText.text = "Type how to send"
        mySendText.textColor = UIColor.black
       
//        myhelpText.textColor = UIColor.lightGray
//        myhelpText.text = "Type your thoughts here..."
        
        // Do any additional setup after loading the view.
        self.prayerText.delegate = self
        self.helpText.delegate = self
        self.myWinText.delegate = self
        self.myBuildText.delegate = self
        self.mySendText.delegate = self
        
        //hide the keyboard on tap
        self.hideKeyboardWhenTappedAround()
        
        //keyboard move up on textfiled editing
        NotificationCenter.default.addObserver(self, selector: #selector(MovementPlanViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(MovementPlanViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)


    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        if prayerText.textColor == UIColor.lightGray {
            prayerText.text = nil
            prayerText.textColor = UIColor.black
        } else
        
        if helpText.textColor == UIColor.lightGray {
            helpText.text = nil
            helpText.textColor = UIColor.black
        } else
        if myWinText.textColor == UIColor.lightGray {
            myWinText.text = nil
            myWinText.textColor = UIColor.black
        } else
        if myBuildText.textColor == UIColor.lightGray {
            myBuildText.text = nil
            myBuildText.textColor = UIColor.black
        }else
        if mySendText.textColor == UIColor.lightGray {
            mySendText.text = nil
            mySendText.textColor = UIColor.black
        }
       
       // prayerText.backgroundColor = UIColor.gray
    }
    func textViewDidEndEditing(_ textView: UITextView) {
      //  prayerText.backgroundColor = UIColor.white
        if prayerText.text.isEmpty {
          //  prayerText.text = "Type your prayer strategy"
            prayerText.textColor = UIColor.lightGray
        } else
        if helpText.text.isEmpty {
         //   helpText.text = "Type who will help"
            helpText.textColor = UIColor.lightGray
        } else
        if myWinText.text.isEmpty {
          //  myWinText.text = "Type how to win"
            myWinText.textColor = UIColor.lightGray
        }else
        if myBuildText.text.isEmpty {
         //   myBuildText.text = "Type how to build"
            myBuildText.textColor = UIColor.lightGray
        }else
        if mySendText.text.isEmpty {
        //    mySendText.text = "Type how to send"
            mySendText.textColor = UIColor.lightGray
        }
       
    }
    @objc func keyboardWillShow(_ notification:Notification) {
        
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            scrollView.contentInset = UIEdgeInsetsMake(0, 0, keyboardSize.height, 0)
        }
    }
    @objc func keyboardWillHide(_ notification:Notification) {
        
        if ((notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue) != nil {
            scrollView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
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
       if let prayer2 = prayerText.text, let help2 = helpText.text, let win2 = myWinText.text, let build2 = myBuildText.text, let send2 = mySendText.text, (prayer2.count > 0 || help2.count > 0 || win2.count > 0 || build2.count > 0 || send2.count > 0) {
        
        
        let myprayerTextInput = prayerText.text
        UserDefaults.standard.set(myprayerTextInput, forKey: "myPrayer")
        let mymyhelpText = helpText.text
        UserDefaults.standard.set(mymyhelpText, forKey: "myHelp")
        let mywinText = myWinText.text
        UserDefaults.standard.set(mywinText, forKey: "myWin")
        let mybuildText = myBuildText.text
        UserDefaults.standard.set(mybuildText, forKey: "myBuild")
        let mysendtext = mySendText.text
        UserDefaults.standard.set(mysendtext, forKey: "mySend")
        
        let AlertController = UIAlertController(title: "Plan", message: "Your Movement Plan Saved Succesfully", preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        AlertController.addAction(defaultAction)
        
        present(AlertController, animated: true, completion: nil)
        }
        
       else {
        
        let alert2 = UIAlertController(title: "Error", message: "Please, add your plans at least in one field", preferredStyle: .alert)
        alert2.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alert2, animated: true, completion: nil)
        
        }
    }

    @IBAction func onShareClicked(_ sender: Any) {
        
        if let prayer1 = prayerText.text, let help1 = helpText.text, let win1 = myWinText.text, let build1 = myBuildText.text, let send1 = mySendText.text, (prayer1.count > 0 && help1.count > 0 && win1.count > 0 && build1.count > 0 && send1.count > 0) {
        
        let shareText = [" My Movement Plan \n\n Prayer \n Prayer Strategy: \n \(String(describing: prayerText.text!)) \n\n My Help \n Who will help: \n \(String(describing: helpText.text!)) \n\n Win \n Ways to reach students through relationships and evangelism: \n  \(String(describing: myWinText.text!)) \n\n Build \n How to create a ministry of discipleship: \n  \(String(describing: myBuildText.text!)) \n\n Send \n How students can lead locally and go globally: \n  \(String(describing: mySendText.text!))  " ]
        
        let activitycVC = UIActivityViewController(activityItems: shareText, applicationActivities: nil)
        activitycVC.popoverPresentationController?.sourceView = self.view
        self.present(activitycVC, animated: true, completion:  nil)
        }
        
        else {
            let alert1 = UIAlertController(title: "Error", message: "Please, add your plans in all empty fields", preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alert1, animated: true, completion: nil)
        }
    }
    
    func boldTextJosia()-> NSAttributedString
    {
        let string = "My Movement Plan" as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "My Movement Plan"))
        
        // 4
        return attributedString
    }
   
    func getSavedPlans(){
        
        
        let prayerDefaults = UserDefaults.standard
        
        if let prayer = prayerDefaults.string(forKey: "myPrayer") {
            prayerText.text = prayer
        }
        if let help = prayerDefaults.string(forKey: "myHelp") {
            helpText.text = help
        }
        if let win = prayerDefaults.string(forKey: "myWin") {
            myWinText.text = win
        }
        if let build = prayerDefaults.string(forKey: "myBuild") {
            myBuildText.text = build
        }
        if let send = prayerDefaults.string(forKey: "mySend") {
            mySendText.text = send
        }
    }
}
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
