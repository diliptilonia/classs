//
//  ViewController.swift
//  Contacts
//
//  Created by Dilip Kumar on 25/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var name = [String]()
    var emailID = [String]()
    var itemList = ["1","2","3","4","5","5","6"]
    var itemList2 = ["1","2","3","4","5","5","6"]
    var index = Int()
  
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = URL(string: "https://jsonplaceholder.typicode.com/users")
        if let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, responce, error) in
                let json = try! JSONSerialization.jsonObject(with: data!, options: [])
                let wholeData = json as! NSArray
                self.name = wholeData.value(forKey: "name") as! [String]
                self.emailID = wholeData.value(forKey: "email") as! [String]
                // let cty = add.value(forKey: "city")
                // self.city.append(cty as! String)
                DispatchQueue.main.async {
                    //                    self.activatorIdicator.stopAnimating()
                    self.tableView.reloadData()
                }
                
                
            }
            task.resume()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = name[indexPath.row]
        cell.detailTextLabel?.text = emailID[indexPath.row]
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        sendData.name = name[indexPath.row]
        sendData.email = emailID[indexPath.row]
        performSegue(withIdentifier: "segue1", sender: nil)
    }
  
  

}

