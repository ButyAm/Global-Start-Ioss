//
//  Post.swift
//  devslopes-social
//
//  Created by Jess Rascal on 25/07/2016.
//  Copyright © 2016 JustOneJess. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase


struct User {
    
    var title: String!
    var summary: String?
    var detailnews: String?
    var photoURL: String!
    var pubdate: String?
    var ref: DatabaseReference?
    var key: String?
    
    init(snapshot: DataSnapshot){
        
        key = snapshot.key
        ref = snapshot.ref
        title = (snapshot.value! as! NSDictionary)["Title"] as! String
        summary = (snapshot.value! as! NSDictionary)["Summary"] as? String
        detailnews = (snapshot.value! as! NSDictionary)["Detail"] as? String
        pubdate = (snapshot.value! as! NSDictionary)["PubDate"] as? String
        photoURL = (snapshot.value! as! NSDictionary)["ImageURL"] as! String
        
    }
    
    
    //    func toAnyObject() -> [String: Any] {
    //        return ["email"]
    //    }
    
}
