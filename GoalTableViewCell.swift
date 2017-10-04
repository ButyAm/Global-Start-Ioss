//
//  GoalTableViewCell.swift
//  globalstart
//
//  Created by Muluken on 2/20/17.
//  Copyright © 2017 globalstart. All rights reserved.
//

import UIKit

class GoalTableViewCell: UITableViewCell {

    @IBOutlet weak var goalTitle: UILabel!
    @IBOutlet weak var goalSummary: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
