//
//  player.swift
//  TVWithClass
//
//  Created by Dilip Kumar on 30/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import Foundation
import UIKit

class Player {
    var name: String
//    var image: UIImage
//    var type: String
//    var desription: String
    
    init(name: String) {
        self.name = name
//        self.image = image
//        self.type = type
//        self.desription = desription
    }
    class func createPlayerArray() -> [Player] {
        var players: [Player] = []
        let player1 = Player(name: "Kohli")
        let player2 = Player(name: "Dhoni")
        players.append(player1)
        players.append(player2)
        return players 
    }
    
}
