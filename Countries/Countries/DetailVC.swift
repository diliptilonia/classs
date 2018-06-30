//
//  DetailVC.swift
//  Countries
//
//  Created by Dilip Kumar on 21/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var nameLable: UILabel!
    var selectedName: county?
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLable.text = selectedName?.name
        myImage.image = selectedName?.image
    }
    
}
