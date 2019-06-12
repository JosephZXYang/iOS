//
//  ViewController.swift
//  demo
//
//  Created by Joseph Yang on 6/12/19.
//  Copyright © 2019 Zhaoxu Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var image: UIImageView!
    var originalFrame = CGRect()
    
    @IBAction func startAnimation(_ sender: Any) {
        originalFrame = image.frame
        UIView.animate(withDuration: 3, animations: {
            self.image.frame = CGRect(x: -450, y: -550, width: self.image.frame.width*5, height: self.image.frame.height*5)
        })
    }
    
    @IBAction func resetImage(_ sender: Any) {
        image.frame = originalFrame
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        originalFrame = image.frame
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

