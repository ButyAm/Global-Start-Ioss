//
//  TestimonyViewController.swift
//  globalstart
//
//  Created by Muluken on 3/8/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class TestimonyViewController: UIViewController {

    @IBOutlet weak var userDetail: UITextField!
    @IBOutlet weak var testimonyTitle: UITextField!
    @IBOutlet weak var detailTestimony: UITextField!
    
    
    var ref:DatabaseReference?
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }

   
    
    @IBAction func sendTestimony(_ sender: Any) {
        
        // sendng testimony to firebase
    if let user = userDetail.text, let title = testimonyTitle.text, let detailTest = detailTestimony.text, (user.characters.count > 0 && title.characters.count > 0 && detailTest.characters.count > 0) {
        
        
        
        let post : [String : AnyObject] = ["user" : user as AnyObject ,
                                           "title" : title as AnyObject,
                                           "detail" : detailTest as AnyObject]
        let databaseRef = Database.database().reference()
        databaseRef.child("Testimonies").childByAutoId().setValue(post)
        
       
        
        let alert1 = UIAlertController(title: "Sent!", message: "Your Testimony is Succesfully Sent", preferredStyle: .alert)
        alert1.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alert1, animated: true, completion: nil)

        let presentingViewController: UIViewController! = self.presentingViewController
        
        self.dismiss(animated: true) {
            // go back to MainMenuView as the eyes of the user
            presentingViewController.dismiss(animated: true, completion: nil)
        }
         print("Successfully Sent")
        
    } else {
            let alert = UIAlertController(title: "All Fields are Required!", message: "Please fill all the required spaces before sending your testimony!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
    }

    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

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
