//
//  ViewController.swift
//  passData
//
//  Created by Dilip Kumar on 21/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBAction func enter(_ sender: UIButton) {
        }
    @IBAction func entered(_ sender: UIButton) {
        performSegue(withIdentifier: "secondVC", sender: self)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination =  segue.destination as! SecondVC
        destination.myString = textField.text!
    }
    
}



