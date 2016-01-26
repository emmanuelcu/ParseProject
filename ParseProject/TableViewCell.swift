//
//  TableViewCell.swift
//  ParseProject
//
//  Created by Emmanuel Cuevas on 1/25/16.
//  Copyright © 2016 Emmanuel Cuevas. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var password: UILabel!
    @IBOutlet var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
