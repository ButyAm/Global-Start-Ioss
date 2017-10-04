//
//  LearnDetailViewController.swift
//  GlobalStartNew
//
//  Created by Muluken on 2/11/17.
//  Copyright © 2017 gcme. All rights reserved.
//

import UIKit

class LearnDetailViewController: UIViewController {

// 
//    @IBOutlet weak var learnImage: UIImageView!
//    @IBOutlet weak var learnTitle: UILabel!
//    @IBOutlet weak var learnDesc: UITextView!
//    
//    @IBOutlet weak var bottomImage: UIImageView!
//    
//    
   
    @IBOutlet weak var learnImage: UIImageView!
    @IBOutlet weak var learnDesc: UITextView!
    @IBOutlet weak var bottomImage: UIImageView!
    @IBOutlet weak var learnTitle: UILabel!
    
    var SentData1:String!
    var SentData2:String!
    var SentData3:String!
    var SentData4:String!
    var SentData5:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        learnTitle.text = SentData1
      //  learnContentDetail.text = SentData2
        
        learnImage.image = UIImage(named: SentData3)
        learnDesc.text = SentData4
        bottomImage.image = UIImage(named: SentData5)
        

        // Do any additional setup after loading the view.
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
