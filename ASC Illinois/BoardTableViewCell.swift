//
//  BoardTableViewCell.swift
//  ASC Illinois
//
//  Created by Tingting Gao on 3/15/15.
//  Copyright (c) 2015 Tingting Gao. All rights reserved.
//

import UIKit

class BoardTableViewCell: UITableViewCell {

    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
