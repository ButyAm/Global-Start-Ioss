//
//  LearnTableViewCell.swift
//  GlobalStartNew
//
//  Created by Muluken on 2/11/17.
//  Copyright © 2017 gcme. All rights reserved.
//

import UIKit

class LearnTableViewCell: UITableViewCell {

    @IBOutlet weak var descLearn: UILabel!
    @IBOutlet weak var titleLearnCell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
