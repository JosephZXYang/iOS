//
//  ViewController.swift
//  How Many Fingers?
//
//  Created by Joseph Yang on 5/26/19.
//  Copyright © 2019 Zhaoxu Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let answer = String(arc4random_uniform(6))
    
    @IBOutlet var guessTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func submitButtonPressed(_ sender: Any) {
        if (guessTextField.text != answer) {
            resultLabel.text = "You're wrong! The correct answer is \(answer)"
        }
        else {
            resultLabel.text = "You're correct!"
        }
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

