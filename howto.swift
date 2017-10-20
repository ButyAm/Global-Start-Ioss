//
//  howto.swift
//  globalstart
//
//  Created by Muluken on 3/22/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit

class howto: UIViewController {

    @IBOutlet weak var jesusModeledBold: UITextView!
    @IBOutlet weak var jackiasBold: UITextView!
    @IBOutlet weak var askLookBold: UITextView!
    @IBOutlet weak var askBold: UITextView!
    @IBOutlet weak var lookBold: UITextView!
    @IBOutlet weak var listenBold: UITextView!
    
   override func viewDidLoad() {
        super.viewDidLoad()
        

        
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
        nav?.backgroundColor = UIColor(red: 38.0/255.0, green: 64.0/255.0, blue: 103.0/255.0, alpha: 1.0)
        nav?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.orange]
        

    //bold text to text view
    jesusModeledBold.attributedText = boldTextJesus()
    jackiasBold.attributedText = boldTextZachias()
    askLookBold.attributedText = boldTextAskLook()
    askBold.attributedText = boldTextAsk()
    lookBold.attributedText = boldTextLook()
    listenBold.attributedText = boldTextListen()

    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    }
   
    
    @IBAction func TakeActio(_ sender: Any) {
        let Alert = UIAlertController(title: "Take Action", message: "\nWrite a survey of 5 -10 questions to get to know the teenage culture. Continue to survey as many students as you can and never stop learning about students and their lives!\n", preferredStyle: .alert)
        
        let DismissButton = UIAlertAction(title: "Close", style: .cancel, handler: {
            
            (alert: UIAlertAction!) -> Void in
            
        })
        
        Alert.addAction(DismissButton)
        
        self.present(Alert, animated: true, completion: nil)

    }
 
    func boldTextJesus()-> NSAttributedString
    {
        let string = "Jesus modeled this." as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Jesus"))
        
        // 4
        return attributedString
    }
    func boldTextZachias()-> NSAttributedString
    {
        let string = "Zacchaeus was a sinner but also curious as to whom Jesus was. Knowing that Zacchaeus needed to know his value and worth, Jesus went to his home and ministered to him. This brought him to repentance and salvation (Luke 19:1-10)." as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Zacchaeus"))
        
        // 4
        return attributedString
    }
    func boldTextAskLook()-> NSAttributedString
    {
        let string = "Jesus modeled the importance of knowing the real issues in the lives of those He ministered to and we must do the same. With the youth culture changing so rapidly we must constantly observe and ask questions to know how we can minister effectively. We must ASK, LOOK and LISTEN." as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Jesus"))
//         attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Zacchaeus"))
//        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Zacchaeus"))
//        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Zacchaeus"))
//        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Zacchaeus"))
        
        // 4
        return attributedString
    }
    func boldTextAsk()-> NSAttributedString
    {
        let string = "• Ask good questions: What do teenagers think about?  What are their beliefs and values? How do they get their needs met? What are their goals in life? What are their greatest fears? " as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Ask"))
        
        // 4
        return attributedString
    }

    func boldTextLook()-> NSAttributedString
    {
        let string = "• Look and observe: How and where do they spend their time?  What do they do for fun? How do they act around their peers, their parents or authority?  How do they dress? " as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Look"))
        
        // 4
        return attributedString
    }
    func boldTextListen()-> NSAttributedString
    {
        let string = "• Listen carefully: Listen to their conversations with others. What do they talk about? What is important to them? " as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Listen"))
        
        // 4
        return attributedString
    }
}
