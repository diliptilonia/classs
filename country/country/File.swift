//
//  File.swift
//  country
//
//  Created by Dilip Kumar on 20/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import Foundation
import UIKit

class Country {
    var name: String
    var capital: String
    var image: UIImage
    
    init(name: String, capital: String) {
        self.name = name
        self.capital = capital
        image = UIImage(named: self.name)!
    }
}
