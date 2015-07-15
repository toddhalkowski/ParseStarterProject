//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//  Created by Todd Halkowski
// cloud storage app using Parse and Bolts framework

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var product = PFObject(className: "Products")
        
        product["name"] = "Pizza"
        
        product["description"] = "Deliciously cheesy"

        product["price"] = 9.99
        
        product.saveInBackgroundWithBlock { (success, error) -> Void in
            if success == true {
                
                println("Successful")
                
            }
            else {
                
                println("Failed")
                println(error)
                
            }
            }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

