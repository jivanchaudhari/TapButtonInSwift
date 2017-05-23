//
//  ViewController.swift
//  JCTapButtonSwift
//
//  Created by Mindrose on 23/05/17.
//  Copyright © 2017 Mindrose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelDisplay: UILabel!

    @IBOutlet var buttonReset: UIButton!
    
    var currentValue: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        buttonReset.setTitle("Reset", for:.normal)
        buttonReset.setTitle("Reseting", for: .highlighted)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTap(_ sender: UIButton) {
        
        let currentValueString: String = labelDisplay.text!
        
        currentValue = Int(currentValueString)!
        
        currentValue = currentValue + 1
        
        let newString = String(currentValue)
        
        labelDisplay.text = newString
        
        print(newString)
    }
    
    @IBAction func buttonRest(_ sender: UIButton) {
        
        labelDisplay.text = "0"
        
    }
    

}

