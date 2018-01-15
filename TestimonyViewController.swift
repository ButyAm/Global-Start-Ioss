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

class TestimonyViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextViewDelegate {

    @IBOutlet weak var userDetail: UITextField!
    @IBOutlet weak var testimonyTitle: UITextField!
  //  @IBOutlet weak var detailTestimony: UITextField!
    @IBOutlet weak var detailTestmony: UITextView!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    
  //  private let  imageUploadManager = ImageUploadManager()
    var picker = UIImagePickerController()

    
    var ref:DatabaseReference?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self

        detailTestmony.text = "story/idea/resource"
        detailTestmony.textColor = UIColor.lightGray

        self.detailTestmony.delegate = self

        
        // change backgrounf color of naviagtion bar
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
        nav?.backgroundColor = UIColor(red: 38.0/255.0, green: 64.0/255.0, blue: 103.0/255.0, alpha: 1.0)
        nav?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]

        ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }

//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        touchesBegan(touches, with: event)
//        self.view.endEditing(true)
//    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        if detailTestmony.textColor == UIColor.lightGray {
            detailTestmony.text = nil
            detailTestmony.textColor = UIColor.black
        }
        
        // prayerText.backgroundColor = UIColor.gray
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        //  prayerText.backgroundColor = UIColor.white
        if detailTestmony.text.isEmpty {
            detailTestmony.text = "enter your message"
            detailTestmony.textColor = UIColor.lightGray
        }
        
    }
    
   
//    func showImagePicker() {
//        let imagePickerController = UIImagePickerController()
//        imagePickerController.delegate = self
//        imagePickerController.allowsEditing = false
//        imagePickerController.sourceType = .photoLibrary
//        present(imagePickerController, animated: true, completion: nil)
//    }
//
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerEditedImage] as? UIImage {
            self.imageView.image = image
            imageButton.isHidden = true
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sendTestimony(_ sender: Any) {
        
        // sendng testimony to firebase
    if let user = userDetail.text, let title = testimonyTitle.text, let detailTest = detailTestmony.text, (user.count > 0 && title.count > 0 && detailTest.count > 0) {
        
        
        
       
        let databaseRef = Database.database().reference()
        let storage = Storage.storage().reference()
        

        
        let key = databaseRef.child("Testimonies").childByAutoId().key
        let imageRef = storage.child("Testimonies").child("\(key).jpg")
        
        let data = UIImageJPEGRepresentation(self.imageView.image!, 0.6)
        

        let uploadTask = imageRef.putData(data!, metadata: nil) { (metadata, error) in
            if error != nil {
                print(error!.localizedDescription)
              //  AppDelegate.instance().dismissActivityIndicatos()
                return
            }
            
            imageRef.downloadURL(completion: { (url, error) in
                if let url = url {
                    let post : [String : AnyObject] = ["user" : user as AnyObject ,
                                                       "title" : title as AnyObject,
                                                       "pathToImage" : url.absoluteString as AnyObject,
                                                       "detail" : detailTest as AnyObject]
               

                    databaseRef.child("Testimonies").childByAutoId().setValue(post)

                 //   AppDelegate.instance().dismissActivityIndicatos()

                    self.dismiss(animated: true, completion: nil)
                }
            })
            
        }
        uploadTask.resume()

        
       
        
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
    @IBAction func uploadImage(_ sender: Any) {
       // showImagePicker()
        picker.allowsEditing = true
        picker.sourceType = .photoLibrary
        
        self.present(picker, animated: true, completion: nil)
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    }
//    func userSelectedImage(_ image: UIImage) {
//        imageView.image = image
//
//        imageButton.setTitle(nil, for: .normal)
//    }
//    func updateProgressView(with percentage: Float) {
//        progressView.progress = percentage/100
//    }
//    func handleError(_ error: String) {
//        let alertViewController = UIAlertController(title: "Error", message: error, preferredStyle: .alert)
//        alertViewController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//        present(alertViewController, animated: true, completion: nil)
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//extension TestimonyViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//
//    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//        picker.dismiss(animated: true, completion: nil)
//    }
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
//        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
//
//            self.imageView.image = image
//            imageButton.isHidden = true
//            picker.dismiss(animated: true, completion: nil)
//
//           // userSelectedImage(image)
////
////            imageUploadManager.uploadImage(image, progressBlock: { [unowned self] (percentage) in
////                print(percentage)
////               self.updateProgressView(with: percentage)
////                }, completionBlock: { (fileURL, errorMessage) in
////                    print(errorMessage as Any)
////            })
//
//        }
//    }
//
//}




