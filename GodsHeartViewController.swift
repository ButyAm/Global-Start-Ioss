//
//  GodsHeartViewController.swift
//  globalstart
//
//  Created by Muluken on 3/23/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit

class GodsHeartViewController: UIViewController {


    @IBOutlet weak var textJosia: UITextView!
    @IBOutlet weak var textMary: UITextView!
    @IBOutlet weak var textDavid: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
        nav?.backgroundColor = UIColor(red: 38.0/255.0, green: 64.0/255.0, blue: 103.0/255.0, alpha: 1.0)
        nav?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.orange]
        

        textJosia.attributedText = boldTextJosia()
        textMary.attributedText = boldTextMary()
        textDavid.attributedText = boldTextDavid()
        
    }

    @IBAction func backpage(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
  

    @IBAction func takeActi(_ sender: Any) {
        let Alert = UIAlertController(title: "Take Action", message: "\n1, When you look at teenagers today, what grieves your heart?\n2, What is your vision for the teenagers of your country?\n3, What potential do you see in them?" + "\n4, How can you involve teenagers in your country to reach their schools and communities; their country and the world?", preferredStyle: .alert)
        
        let DismissButton = UIAlertAction(title: "Close", style: .cancel, handler: {
            
            (alert: UIAlertAction!) -> Void in
            
        })
        
        Alert.addAction(DismissButton)
        
        self.present(Alert, animated: true, completion: nil)
    }
  
    func boldTextJosia()-> NSAttributedString
    {
        let string = "As a youth, God called Josiah to turn an evil and idolatrous nation to one who sought after God." as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Josiah"))
        
        // 4
        return attributedString
    }
    
    func boldTextMary()-> NSAttributedString
    {
        let string = "Mary was chosen as a young girl to give birth to the Savior of the world!" as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Mary"))
        
        // 4
        return attributedString
    }
    func boldTextDavid()-> NSAttributedString
    {
        let string = "David, a teenage shepherd boy, was called to fight a powerful nation and defeat it to establish the kingdom of Israel." as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 14.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14.0)]
        
        // Part of string to be bold
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "David"))
        
        // 4
        return attributedString
    }
  
    
}
