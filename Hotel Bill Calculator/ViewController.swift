//
//  ViewController.swift
//  Hotel Bill Calculator
//
//  Created by Ian Reineck on 1/31/16.
//  Copyright © 2016 Ian Reineck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBOutlet weak var lblNights: UITextField!
  @IBOutlet weak var lblRate: UITextField!
  @IBOutlet weak var Total: UILabel!
  
  @IBAction func btnCalculate(sender: AnyObject) {
    print ("button pushed")
    
    if let numNights = lblNights.text.toInt(){
      if let myRate = lblRate.text.toInt(){
        var myTotal = numNights * myRate
        print (myTotal)
        Total.text = "Your total is \(myTotal)"
        
      }
    }
    
  }
  
}


