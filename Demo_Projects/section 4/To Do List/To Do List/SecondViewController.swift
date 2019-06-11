//
//  SecondViewController.swift
//  To Do List
//
//  Created by Joseph Yang on 6/11/19.
//  Copyright © 2019 Zhaoxu Yang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet var itemText: UITextField!
    @IBAction func addPressed(_ sender: Any) {
        
        let arrayObject = UserDefaults.standard.object(forKey: "array")
        
        var arr: [String] = []
        
        if let tempArr = arrayObject as? [String] {
            arr = tempArr
            let itemTextOption = itemText.text
            if let item = itemTextOption {
                arr.append(item)
            }
        }
        else {
            let itemTextOption = itemText.text
            if let item = itemTextOption {
                arr = [item]
            }
        }
        if arr.count > 0 {
            UserDefaults.standard.set(arr, forKey: "array")
        }
        itemText.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(UserDefaults.standard.object(forKey: "array")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        itemText.resignFirstResponder()
        return true
    }
}

