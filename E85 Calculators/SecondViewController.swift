//
//  SecondViewController.swift
//  E85 Calculators
//
//  Created by Hiren Swaroop on 7/13/18.
//  Copyright © 2018 Hiren Swaroop. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    
    @IBOutlet weak var amountFuel: UITextField!
    @IBOutlet weak var ePercent: UITextField!
    @IBOutlet weak var pumpEPercent: UITextField!
    @IBOutlet weak var ePercentDesired: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amountFuel.delegate = self
        amountFuel.tag = 0
        ePercent.delegate = self
        ePercent.tag = 0
        pumpEPercent.delegate = self
        pumpEPercent.tag = 0
        ePercentDesired.delegate = self
        ePercentDesired.tag = 0
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == amountFuel {
            textField.resignFirstResponder()
            ePercent.becomeFirstResponder()
        } else if textField == ePercent {
            textField.resignFirstResponder()
            pumpEPercent.becomeFirstResponder()
        } else if textField == pumpEPercent {
            textField.resignFirstResponder()
            ePercentDesired.becomeFirstResponder()
        } else if textField == ePercentDesired {
            textField.resignFirstResponder()
        }
        return false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

