//
//  ViewController.swift
//  TVWithClass
//
//  Created by Dilip Kumar on 30/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var player: [Player] = []
    var names = ["1", "2", "3", "4"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player.createPlayerArray()
        for name in player {
            print(name)
        }
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }


}

