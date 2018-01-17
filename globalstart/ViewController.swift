//
//  ViewController.swift
//  globalstart
//
//  Created by Muluken on 2/17/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    let emailField = "globalstart@cccsa.com"
    let pwdField = "winbuildsend"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
       
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 38, height: 38))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "img_take_action.jpg")
        imageView.image = image
        navigationItem.titleView = imageView
        nav?.tintColor = UIColor.white
        nav?.backgroundColor = UIColor(red: 38.0/255.0, green: 64.0/255.0, blue: 103.0/255.0, alpha: 1.0)
        nav?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.orange]
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
      
  
            Auth.auth().signIn(withEmail: emailField, password: pwdField, completion: { (user, error) in
                if error == nil {
                    print("Buty: Email user authenticated with Firebase")

                } else {
                    print("Buty: Unable to authenticate with Firebase using email")


                }
            })
       
    }

    
    
    @IBAction func testimony(_ sender: Any) {
        
    }
    
    @IBAction func contactUs(_ sender: Any) {
    let alertController = UIAlertController(title: "Find Us", message: "", preferredStyle: .alert)
                let buttonOne = UIAlertAction(title: "Find Us On Facebook", style: .default, handler: { (action) -> Void in
                    let url = URL(string: "https://www.facebook.com/GlobalStart-120065652005616/?modal=admin_todo_tour")!
                    if UIApplication.shared.canOpenURL(url) {
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                        //If you want handle the completion block than
                        UIApplication.shared.open(url, options: [:], completionHandler: { (success) in
                            print("Open url : \(success)")
                        })
                    }
                })
//                let buttonThree = UIAlertAction(title: "Email Us", style: .default, handler: { (action) -> Void in
//
//                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "EmailUsViewController") as! EmailUsViewController
//                           //  vc.recCatIdArray = categoryIdArray[indexPath.row]
//                            //   self.navigationController?.pushViewController(vc, animated: true)
//                            self.present(vc, animated: true, completion: nil)
////                    let url = URL(string: "http://www.globalstart.cc")!
////                    if UIApplication.shared.canOpenURL(url) {
////                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
////                        //If you want handle the completion block than
////                        UIApplication.shared.open(url, options: [:], completionHandler: { (success) in
////                            print("Open url : \(success)")
////                        })
////                    }
//                })
        
                let buttonCancel = UIAlertAction(title: "OK", style: .cancel) { (action) -> Void in
                    print("Cancel Button Pressed")
                }
        
                alertController.addAction(buttonOne)
               // alertController.addAction(buttonThree)
                alertController.addAction(buttonCancel)
        
                present(alertController, animated: true, completion: nil)
    }

    @IBAction func aboutUs(_ sender: Any) {
    
   
    
        let Alert = UIAlertController(title: "About Us", message: "Global Start is for anyone in the world who would like to start a local youth ministry. Pray, go through each step of the app and answer the questions in the “Take Action” tab. Your final plan will help you trust God in joining all of us around the world in reaching teenagers globally.", preferredStyle: .alert)
        
        let DismissButton = UIAlertAction(title: "Close", style: .cancel, handler: {
            
            (alert: UIAlertAction!) -> Void in
            
        })
        
        Alert.addAction(DismissButton)
        
        self.present(Alert, animated: true, completion: nil)
        
    }
    

    override var prefersStatusBarHidden : Bool {
        return true
    }
    
     func autologin ()  {
       
    
    }
}
