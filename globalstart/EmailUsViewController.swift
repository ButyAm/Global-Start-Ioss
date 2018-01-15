//
//  EmailUsViewController.swift
//  globalstart
//
//  Created by Buty on 1/12/18.
//  Copyright © 2018 globalstart. All rights reserved.
//

import UIKit
import Foundation
import MessageUI


class EmailUsViewController: UIViewController ,UITextViewDelegate, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var emailText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        emailText.text = "enter your message"
        emailText.textColor = UIColor.lightGray
       
        self.emailText.delegate = self
        
        
        // sending email
        if !MFMailComposeViewController.canSendMail() {
            print("Mail services are not available")
            return
        }

        // Do any additional setup after loading the view.
    }

//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        touchesBegan(touches, with: event)
//        self.view.endEditing(true)
//    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        if emailText.textColor == UIColor.lightGray {
            emailText.text = nil
            emailText.textColor = UIColor.black
        }
        
        // prayerText.backgroundColor = UIColor.gray
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        //  prayerText.backgroundColor = UIColor.white
        if emailText.text.isEmpty {
            emailText.text = "enter your message"
            emailText.textColor = UIColor.lightGray
        }
        
    }
//
//    func mailComposeController(_ controller: MFMailComposeViewController,
//                               didFinishWith result: MFMailComposeResult, error: Error?) {
//        // Check the result or perform other tasks.
//
//        // Dismiss the mail compose view controller.
//        controller.dismiss(animated: true, completion: nil)
//    }
//
//
    
    @IBAction func closeView(_ sender: Any) {
       self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sendEmail(_ sender: Any) {
       // let mailCOmposerViewCOntroller = configureMailComposeViewController()
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showSendMailErrorAlert()
        }
        
    }
    

    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        mailComposerVC.setToRecipients(["buty015@gmail.com"])
        mailComposerVC.setSubject("Sending you an in-app e-mail...")
        mailComposerVC.setMessageBody("Sending e-mail in-app is not so bad!", isHTML: false)
        
        return mailComposerVC
    }
    
    func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertController(title: "Could not send email", message: "Your device could not send email", preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "Ok", style: .default, handler: nil)
        sendMailErrorAlert.addAction(dismiss)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
    }
    
    // MARK: MFMailComposeViewControllerDelegate Method
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    

}
