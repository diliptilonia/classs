//
//  CountryTableViewController.swift
//  country
//
//  Created by Dilip Kumar on 20/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class CountryTableViewController: UIViewController {

    @IBOutlet weak var capitalNameLbl: UILabel!
    @IBOutlet weak var countyNameLbl: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var county: Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()

     countyNameLbl.text = county?.name
     capitalNameLbl.text = county?.capital
        imageView.image = county?.image
        
    }

   
}
