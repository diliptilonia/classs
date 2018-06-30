//
//  ViewController.swift
//  TVCC
//
//  Created by Dilip Kumar on 20/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var elements = ["horse","cat", "dog", "potato", "horse","cat", "dog", "potato", "horse","cat", "dog", "potato"]
    @IBOutlet weak var myTableView: UITableView!
    let customCellIdentifire = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customCellIdentifire, for: indexPath) as! CustomTableViewCell
        cell.animalNameLable.text = elements[indexPath.row]
        cell.animalImages.image = UIImage(named: elements[indexPath.row])
        return cell
    }
    


}

