//
//  MyCustomCellTableViewCell.swift
//  TV
//
//  Created by Dilip Kumar on 20/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class MyCustomCellTableViewCell: UITableViewCell {
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
