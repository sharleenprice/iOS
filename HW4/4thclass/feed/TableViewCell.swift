//
//  TableViewCell.swift
//  4thclass
//
//  Created by Sharleen Price on 2/19/18.
//  Copyright © 2018 Sharleen Price. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if (selected) {
            print("i am selected")
        }else{
            print("not selected")
        }
        

        // Configure the view for the selected state
    }
    
}
