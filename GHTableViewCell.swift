//
//  GHTableViewCell.swift
//  GlobalStartNew
//
//  Created by Muluken on 2/11/17.
//  Copyright © 2017 gcme. All rights reserved.
//

import UIKit

class GHTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleGodsHeart: UILabel!
    
    
    @IBOutlet weak var contentGodsHeart: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
