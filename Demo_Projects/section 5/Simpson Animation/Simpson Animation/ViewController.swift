//
//  ViewController.swift
//  Simpson Animation
//
//  Created by Joseph Yang on 6/12/19.
//  Copyright © 2019 Zhaoxu Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var image: UIImageView!
    
    var currentImageIndex = 0
    var timer = Timer()
    var timerRunning = false // avoid multiple timers running
    
    /*
     Image fade in function.
     How to implement: image transparency from 100% to 0%
     */
    @IBAction func fadeIn(_ sender: Any) {
        
        image.alpha = 0 // start with 100% transparency
        
        UIView.animate(withDuration: 2, animations: {
            
            self.image.alpha = 1 // restore 0% transparency
            
        })
        
    }
    
    /*
     Image slide in function (from top-left to center).
     How to implement: modify x,y coordinates of image center
     */
    @IBAction func slideIn(_ sender: Any) {
        
        image.center = CGPoint(x: image.center.x - 300, y: image.center.y - 400) // change center coordinates
        
        UIView.animate(withDuration: 2, animations: {
            
            self.image.center = CGPoint(x: self.image.center.x + 300, y: self.image.center.y + 400) // restore center coordinates
            
        })
        
    }
    
    /*
     Image grow in function.
     How to implement: change image.frame property
     */
    @IBAction func grow(_ sender: Any) {
        
        let fullFrame = image.frame
        image.frame = CGRect(x: 0, y: 100, width: 0, height: 0)
        
        UIView.animate(withDuration: 2, animations: {
            
            self.image.frame = fullFrame
            
        })
    }
    
    
    @objc func changeFrame() {
        currentImageIndex = (currentImageIndex + 1) % 6
        image.image = UIImage(named: "frame_\(currentImageIndex)_delay-0.1s.gif")
    }
    
    @IBAction func startPressed(_ sender: Any) {
        if (!timerRunning) {
            timer = Timer.scheduledTimer(timeInterval: 0.25, target: self, selector: #selector(ViewController.changeFrame), userInfo: nil, repeats: true)
            timerRunning = true
        }
    }
    
    @IBAction func stopPressed(_ sender: Any) {
        if (timerRunning) {
            timer.invalidate()
            timerRunning = false
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

