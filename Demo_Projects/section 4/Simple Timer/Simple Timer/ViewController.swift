//
//  ViewController.swift
//  Simple Timer
//
//  Created by Joseph Yang on 6/4/19.
//  Copyright © 2019 Zhaoxu Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time = 0
    var inputTime = 0
    var isRunning = false // a boolean to detect whether there is a timer
                             // running at this time
    
    @IBOutlet var inputText: UITextField!
    @IBOutlet var showTime: UILabel!
    @IBOutlet var showLimit: UILabel!
    
    
    @IBAction func setPressed(_ sender: Any) {
        let inputNumber = Int(inputText.text!)
        if let t = inputNumber {
            inputTime = t
            time = t
            showLimit.text = String(inputTime)
            showTime.text = String(time)
        } else {
            // Should never reach this line.
            // Keyboard time set to number pad
            showTime.text = "Invalid input. Must be a positive integer."
        }
    }
    @IBAction func pausePressed(_ sender: Any) {
        isRunning = false
        timer.invalidate()
    }
    @objc func processTimer() {
        if (time > 0) {
            time -= 1
            showTime.text = String(time)
        }
        else {
            timer.invalidate()
            isRunning = false
        }
    }
    @IBAction func actionPressed(_ sender: Any) {
        if (!isRunning) { // prevent multiple timer running at the same time
            isRunning = true
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        }
    }
    @IBAction func plusPressed(_ sender: Any) {
        time += 10
        showTime.text = String(time)
    }
    @IBAction func resetPressed(_ sender: Any) {
        isRunning = false
        timer.invalidate()
        time = inputTime
        showTime.text = String(time)
    }
    @IBAction func minusPressed(_ sender: Any) {
        if (time > 10) {
            time -= 10
            showTime.text = String(time)
        }
        if (time <= 10) {
            timer.invalidate() // time can't be negative
            isRunning = false
            time = 0
            showTime.text = String(time)
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

