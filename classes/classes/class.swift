//
//  class.swift
//  classes
//
//  Created by Dilip Kumar on 30/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import Foundation
import UIKit

class Player {
    var name: String
    init(name: String) {
        self.name = name
    }
    class func createPlayerList() -> [Player] {
        var player: [Player] = []
        let player1 = Player(name: "Dilip")
        let player2 = Player(name: "Suresh")
        let player3 = Player(name: "Deepak")
        
        player.append(player1)
        player.append(player2)
        player.append(player3)
        return player
    }
}
