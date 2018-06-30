//
//  ViewController.swift
//  country
//
//  Created by Dilip Kumar on 20/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var countries = [Country]()
    let customCellIdentifire = "cell"
    let segueIdentifire = "showDetail"
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let india = Country(name: "a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1", capital: "new delhi")
        countries.append(india)
        let canada = Country(name: "a2", capital: "Do not know")
        countries.append(canada)
        let aus = Country(name: "a3", capital: "cenbrra")
        countries.append(aus)
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 140
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customCellIdentifire, for: indexPath)
        cell.textLabel?.text = countries[indexPath.row].name.capitalized
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("you clicked on cell")
//        performSegue(withIdentifier: "showDetail", sender: self)
//    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        print("we reached in prepare")
//        if let destination = segue.destination as? CountryTableViewController {
//            destination.county = countries[(tableView. indexPathForSelectedRow?.row)!]
//        }
//    }
    


}

