//
//  GHDetailViewController.swift
//  GlobalStartNew
//
//  Created by Muluken on 2/11/17.
//  Copyright © 2017 gcme. All rights reserved.
//

import UIKit

class GHDetailViewController: UIViewController {

    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailImage: UIImageView!
   
    @IBOutlet weak var decTextView: UITextView!
    @IBOutlet weak var Scroller: UIScrollView!
    
    var SentData1:String!
    var SentData2:String!
    var SentData3:String!
    var SentData4:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
       // detailTitle.text = SentData1
        detailTitle.text = SentData2
        
        detailImage.image = UIImage(named: SentData3)
        decTextView.text = SentData4
        

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
