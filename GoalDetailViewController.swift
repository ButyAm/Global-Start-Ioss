//
//  GoalDetailViewController.swift
//  globalstart
//
//  Created by Muluken on 2/20/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit

class GoalDetailViewController: UIViewController {

    @IBOutlet weak var goalTopImage: UIImageView!
    @IBOutlet weak var goalDetTitle: UILabel!
    @IBOutlet weak var goalDesc: UITextView!

    @IBOutlet weak var goalBotmImage: UIImageView!
    
    var SentData1:String!
    var SentData2:String!
    var SentData3:String!
    var SentData4:String!
    var SentData5:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        goalDetTitle.text = SentData1
        //  learnContentDetail.text = SentData2
        
        goalTopImage.image = UIImage(named: SentData3)
        goalDesc.text = SentData4
        goalBotmImage.image = UIImage(named: SentData5)
        

        
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
