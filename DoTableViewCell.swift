//
//  DoTableViewCell.swift
//  globalstart
//
//  Created by Muluken on 2/20/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit

class DoTableViewCell: UITableViewCell {
    @IBOutlet weak var doTitle: UILabel!
    @IBOutlet weak var doSummary: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
