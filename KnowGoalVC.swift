//
//  KnowGoalVC.swift
//  globalstart
//
//  Created by Muluken on 2/24/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit

class KnowGoalVC: UIViewController {

    @IBOutlet weak var jesusWentFrom: UITextView!
    @IBOutlet weak var jesusHad: UITextView!
    @IBOutlet weak var winText: UITextView!
    @IBOutlet weak var buildText: UITextView!
    @IBOutlet weak var sendText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
        nav?.backgroundColor = UIColor(red: 38.0/255.0, green: 64.0/255.0, blue: 103.0/255.0, alpha: 1.0)
        nav?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.orange]
        
        
        //bold word from the sentence
        jesusWentFrom.attributedText = boldTextJesus()
        jesusHad.attributedText = boldTextJesusHad()
        winText.attributedText = boldTextWin()
        buildText.attributedText = boldTextBuild()
        sendText.attributedText = boldTextSend()
        
    }

   
    
    @IBAction func backpage(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    }
 
    func boldTextJesus()-> NSAttributedString
    {
        let string = "Jesus went from town to town preaching the Good News. He spoke to the masses and ate dinner with individuals. He chose 12 ordinary men to disciple, train and pour His life into. Jesus modeled His life and taught them to love, serve, pray, and minister to others. Then He equipped them with the Word and the Holy Spirit and sent them out to disciple the nations." as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Jesus"))
        
        // 4
        return attributedString
    }
    func boldTextJesusHad()-> NSAttributedString
    {
        let string = "Jesus had three main aspects to His movement:" as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Jesus"))
        
        // 4
        return attributedString
    }
    func boldTextWin()-> NSAttributedString
    {
        let string = "1. Win - people to Himself through evangelism" as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Win"))
        
        // 4
        return attributedString
    }
    func boldTextBuild()-> NSAttributedString
    {
        let string = "2. Build - disciples by teaching them to be in relationship with Him and training them to do the work that He was doing " as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Build"))
        
        // 4
        return attributedString
    }
    
    func boldTextSend()-> NSAttributedString
    {
        let string = "3. Send - them out to multiply their faith and help fulfill the Great Commission" as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Send"))
        
        // 4
        return attributedString
    }
    

}
