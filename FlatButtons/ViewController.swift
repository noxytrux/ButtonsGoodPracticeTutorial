//
//  ViewController.swift
//  FlatButtons
//
//  Created by Marcin Pędzimąż on 24.09.2014.
//  Copyright (c) 2014 Marcin Pedzimaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var goodButton: UIButton!
    @IBOutlet weak var badButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad() //#66D269
        
        //good button...
        goodButton.backgroundColor = UIColor.clearColor() //reset IB Color
        goodButton.setBackgroundImage(UIImage.imageWithColor(UIColor.colorWithHex("#66D269")), forState: .Normal)
        goodButton.setBackgroundImage(UIImage.imageWithColor(UIColor.colorWithHex("#66D269", alpha: 0.5)), forState: .Highlighted)
    }

    //bad button...
    
    @IBAction func buttonHightlight(sender: UIButton!) {
    
        sender.backgroundColor = UIColor(red: 255.0/255.0, green: 81.0/255.0, blue: 85.0/255.0, alpha: 0.5)
        
    }

    @IBAction func buttonNormal(sender: UIButton!) {
        
        sender.backgroundColor = UIColor(red: 255.0/255.0, green: 81.0/255.0, blue: 85.0/255.0, alpha: 1.0)
    }
    
    @IBAction func badButtonPress(sender: UIButton!) {
    
        println("BAD BUTTON PRESS")
    }
    
    @IBAction func goodButtonPress(sender: UIButton!) {

        println("GOOD BUTTON PRESS")
    }
}

