//
//  ViewController.swift
//  Hello World
//
//  Created by Joseph Yang on 5/26/19.
//  Copyright © 2019 Zhaoxu Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var nameLabel: UILabel!
    
    @IBAction func submitButtonPressed(_ sender: Any) {
        nameLabel.text = nameTextField.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

