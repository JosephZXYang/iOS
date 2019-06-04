//
//  ViewController.swift
//  Is It Prime
//
//  Created by Joseph Yang on 6/4/19.
//  Copyright © 2019 Zhaoxu Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userInputText: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func submitPressed(_ sender: Any) {
        let userInputNumber = Int(userInputText.text!)
        if let testInput = userInputNumber {
            if (testInput < 1) {
                resultLabel.text = "Invalid input! Should be positive integer."
            }
            else if (testInput == 1) { // Edge case 1: input = 1
                resultLabel.text = "It is a NOT prime number!"
            }
            else if (testInput == 2) { // Edge case 2: input = 2
                resultLabel.text = "It is a prime number!"
            }
            else {
                var minSqRoot = 0;
                while (minSqRoot * minSqRoot <= testInput) {
                    minSqRoot += 1
                }
                var denom = 2;
                while (testInput % denom != 0 && denom < minSqRoot) {
                    denom += 1
                }
                if (testInput % denom == 0) {
                    resultLabel.text = "It is a NOT prime number!"
                }
                else {
                    resultLabel.text = "It is a prime number!"
                }
            }
        } else {
            
            // Never reach this line, since keyboard type is number
            resultLabel.text = "Invalid input! Should be positive integer."
            
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

