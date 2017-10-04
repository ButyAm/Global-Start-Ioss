//
//  CustomButton.swift
//  globalstart
//
//  Created by Muluken on 3/28/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit

@IBDesignable class CustomButton: UIButton {

   
        @IBInspectable var rounded: Bool = false {
            willSet {
                if newValue {
                    self.layer.cornerRadius = self.frame.size.height / 2
                }
                else{
                    self.layer.cornerRadius = 0
                }
            }
        }
    


}
