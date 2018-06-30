//
//  countriesClass.swift
//  Countries
//
//  Created by Dilip Kumar on 21/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import Foundation
import UIKit

class county {
    var name: String?
    var image: UIImage?
    
    init(name: String) {
        self.name = name
        
        self.image = UIImage(named: self.name!)!
    }
}
