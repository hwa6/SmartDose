//
//  EditViewController.swift
//  DiabetesCalculatorv2
//
//  Created by Henry Anderson on 4/22/20.
//  Copyright © 2020 millihenry. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {
    
    @IBOutlet weak var profileNameVar: UITextField!
    
    @IBOutlet weak var correctionFactorVar: UITextField!
    
    @IBOutlet weak var carbRatioVar: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ProfileListViewController
        destVC.passedDataString = profileNameVar.text!
        destVC.passedCFString = correctionFactorVar.text!
        destVC.passedCRString = carbRatioVar.text!
    }
    

}