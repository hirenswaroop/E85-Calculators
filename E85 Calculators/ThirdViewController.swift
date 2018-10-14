//
//  ThirdViewController.swift
//  E85 Calculators
//
//  Created by Hiren Swaroop on 7/14/18.
//  Copyright © 2018 Hiren Swaroop. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    
    @IBOutlet weak var gallonsE: UITextField!
    @IBOutlet weak var ePercent: UITextField!
    @IBOutlet weak var gallonsGas: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gallonsE.delegate = self
        gallonsE.tag = 0
        ePercent.delegate = self
        ePercent.tag = 0
        gallonsGas.delegate = self
        gallonsGas.tag = 0
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == gallonsE {
            textField.resignFirstResponder()
            ePercent.becomeFirstResponder()
        } else if textField == ePercent {
            textField.resignFirstResponder()
            gallonsGas.becomeFirstResponder()
        } else if textField == gallonsGas {
            textField.resignFirstResponder()
        }
        return false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
