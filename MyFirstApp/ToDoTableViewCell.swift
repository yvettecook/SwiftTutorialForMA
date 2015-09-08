//
//  ToDoTableViewCell.swift
//  MyFirstApp
//
//  Created by Yvette Cook on 08/09/2015.
//  Copyright © 2015 Yvette. All rights reserved.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {

    @IBOutlet var toDoCellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
