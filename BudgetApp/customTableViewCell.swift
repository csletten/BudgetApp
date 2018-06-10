//
//  customTableViewCell.swift
//  BudgetApp
//
//  Created by Christian Sletten on 10.06.2018.
//  Copyright © 2018 Christian Sletten. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var animalImage: UIImageView!
    
    @IBOutlet weak var animalLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
