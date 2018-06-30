//
//  ViewController.swift
//  JSON
//
//  Created by Dilip Kumar on 21/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var activatorIdicator: UIActivityIndicatorView!
    
    @IBOutlet weak var tableview: UITableView!
    
    var city = [String]()
    var city2 = [String]()
    var email = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activatorIdicator.startAnimating()
        activatorIdicator.activityIndicatorViewStyle = .whiteLarge
        let urlString = URL(string: "https://jsonplaceholder.typicode.com/users")
        if let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, responce, error) in
                let json = try! JSONSerialization.jsonObject(with: data!, options: [])
                let name = json as! NSArray
                self.city = name.value(forKey: "name") as! [String]
                self.email = name.value(forKey: "email") as! [String]
               // let cty = add.value(forKey: "city")
               // self.city.append(cty as! String)
                DispatchQueue.main.async {
//                    self.activatorIdicator.stopAnimating()
                    self.tableview.reloadData()
                }

                for cityName in self.city {
                    print(cityName)
                    
                }
            }
            task.resume()
        }
        
        // Second Json Task
      let urlString2 = URL(string: "https://jsonplaceholder.typicode.com/users")
        if let url2 = urlString2 {
            let task2 = URLSession.shared.dataTask(with: url2) { (data2, responce2, error2) in
                let json2 = try! JSONSerialization.jsonObject(with: data2!, options: [])
                let name2 = json2 as! NSArray
                print(name2)
                let add2 = name2.value(forKey: "address") as! NSArray
                let geo2 = add2.value(forKey: "geo") as! NSArray
                let lat = [geo2.value(forKey: "lat")]
                print(lat)
               
            }
            task2.resume()
            
        }

        
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = city[indexPath.row]
        cell.detailTextLabel?.text = email[indexPath.row]
        return cell
    }

}

