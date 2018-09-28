//
//  ViewController.swift
//  Demo
//
//  Created by Aravind on 19/09/18.
//  Copyright © 2018 Aravind. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberonscreen:Double = 0
    var performingmath=false
    var previousnumer:Double=0
    var operatoin=0
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if performingmath==true{
            label.text=String(sender.tag)
            numberonscreen=Double(label.text!)!
            performingmath=false
        }
        else{
            label.text=label.text! + String(sender.tag)
            numberonscreen = Double(label.text!)!
        }
    }
    
    @IBAction func button(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16 {
            previousnumer=Double(label.text!)!
            if sender.tag==12{//divide
                label.text = "/"
            }
            else if sender.tag==13{//multiplication
                label.text = "x"
            }
            else if sender.tag==14{//Subraction
                label.text = "-"
            }
            else if sender.tag==15{//Addition
                label.text = "+"
            }
            operatoin=sender.tag
            performingmath=true
        }
        else if sender.tag==16{
            if operatoin==12{
                label.text=String(previousnumer/numberonscreen)
            }
            else if operatoin==13{
                label.text=String(previousnumer*numberonscreen)
            }
            else if operatoin==14{
                label.text=String(previousnumer-numberonscreen)
            }
            else if operatoin==15{
                label.text=String(previousnumer+numberonscreen)
            }
        }
        else if sender.tag==11{
            label.text=""
            previousnumer=0
            operatoin=0
            numberonscreen=0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

