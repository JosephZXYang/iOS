//
//  ViewController.swift
//  Phone Number
//
//  Created by Joseph Yang on 6/11/19.
//  Copyright © 2019 Zhaoxu Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberInput: UITextField!
    @IBOutlet var numberLabel: UILabel!
    
    @IBAction func enterPressed(_ sender: Any) {
        UserDefaults.standard.set(numberInput.text, forKey: "Phone")
        
        let phoneObject = UserDefaults.standard.object(forKey: "Phone")
        
        if let phoneNumber = phoneObject as? String {
            numberLabel.text = String(phoneNumber)
        }
        else {
            numberLabel.text = "No record yet!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let phoneObject = UserDefaults.standard.object(forKey: "Phone")
        
        if let phoneNumber = phoneObject as? String {
            numberLabel.text = String(phoneNumber)
        }
        else {
            numberLabel.text = "No record yet!"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

