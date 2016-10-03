//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var fullName: String {
            return "Jacqueline Schweiger"
        }
        
        var phoneNumber: Int {
            return 8675309
        }
        
    
        print(fullName.pigLatin)
        print(fullName.points)
        print(fullName.unicornLevel)
        
        print(phoneNumber.squared)
        print(phoneNumber.halved)
        
    
        print(fullName.whisper())
        print(fullName.shout())
        
        print(phoneNumber.half())
        print(phoneNumber.isDivisible(by: 2))
        
        unicornLevelLabel.text = fullName.unicornLevel
        
    }
        

        
}


