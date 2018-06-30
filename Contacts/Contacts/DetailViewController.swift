//
//  DetailViewController.swift
//  Contacts
//
//  Created by Dilip Kumar on 25/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
 override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text = sendData.name
        emailTextField.text = sendData.email
    
    
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

struct sendData {
    static var name = String()
    static var email = String()
}

