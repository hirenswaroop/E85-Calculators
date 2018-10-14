//
//  FirstViewController.swift
//  E85 Calculators
//
//  Created by Hiren Swaroop on 7/13/18.
//  Copyright © 2018 Hiren Swaroop. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    // MARK: Properties
    
    @IBOutlet weak var initialE: UITextField!
    @IBOutlet weak var gallonsE: UITextField!
    @IBOutlet weak var gallonsGas: UITextField!
    @IBOutlet weak var finalE: UITextField!
    @IBOutlet weak var ethanol: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialE.delegate = self
        initialE.tag = 0
        gallonsE.delegate = self
        gallonsE.tag = 0
        gallonsGas.delegate = self
        gallonsGas.tag = 0
        finalE.delegate = self
        finalE.tag = 0
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == initialE {
            textField.resignFirstResponder()
            gallonsE.becomeFirstResponder()
        } else if textField == gallonsE {
            textField.resignFirstResponder()
            gallonsGas.becomeFirstResponder()
        } else if textField == gallonsGas {
            textField.resignFirstResponder()
            finalE.becomeFirstResponder()
        } else if textField == finalE {
            textField.resignFirstResponder()
        }
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    
    @IBAction func calculate(_ sender: UIButton) {
        let initialED = (initialE.text! as NSString).doubleValue
        let gallonsED = (gallonsE.text! as NSString).doubleValue
        let gallonsGasD = (gallonsGas.text! as NSString).doubleValue
        let finalED = (finalE.text! as NSString).doubleValue
        let finalCalc = (((14 * (finalED / 100)) - (14 - (gallonsED - gallonsGasD) * (initialED / 100)) - (gallonsGasD * 0.1)) / gallonsED) * -100
        print(finalCalc)
        ethanol.text = "E \(finalCalc)"
    }
}
