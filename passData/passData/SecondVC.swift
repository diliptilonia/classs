//
//  SecondVC.swift
//  passData
//
//  Created by Dilip Kumar on 21/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    
    @IBOutlet weak var lable: UILabel!
    var myString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lable.text = myString
    }

   

}
