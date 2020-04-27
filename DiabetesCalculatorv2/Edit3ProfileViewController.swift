//
//  Edit3ProfileViewController.swift
//  DiabetesCalculatorv2
//
//  Created by Henry Anderson on 4/26/20.
//  Copyright © 2020 millihenry. All rights reserved.
//

import UIKit

class Edit3ProfileViewController: UIViewController {

    @IBOutlet weak var profile3NameVar: UITextField!
    
    @IBOutlet weak var correction3FactorVar: UITextField!
    
    @IBOutlet weak var carb3RatioVar: UITextField!
    
    
    @IBAction func saveChanges(_ sender: Any) {
            if(profile3NameVar.text == ""){
                EditProfileViewController.GlobalVariable.profileArray[3] = "Profile 3"
            }
            else{
                EditProfileViewController.GlobalVariable.profileArray[3] = profile3NameVar.text!
            }
            
            if(correction3FactorVar.text == ""){
                EditProfileViewController.GlobalVariable.correctionArray[3] = Double ("0")!
            }
            else{
                EditProfileViewController.GlobalVariable.correctionArray[3] = Double (correction3FactorVar.text!)!
            }
            
            if(carb3RatioVar.text == ""){
                EditProfileViewController.GlobalVariable.carbArray[3] = Double ("0")!
            }
            else{
            EditProfileViewController.GlobalVariable.carbArray[3] = Double (carb3RatioVar.text!)!
            }
            
        }
    
    override func viewDidLoad() {
        self.navigationController?.navigationBar.isHidden = false
        super.viewDidLoad()
        self.hideKeyboardOnTap() 
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ProfileListViewController
        if(profile3NameVar.text == ""){
                       destVC.passed3DataString = "Profile 3"
                   }
                   else{
                       destVC.passed3DataString = profile3NameVar.text!
                   }
        destVC.passed3CFString = correction3FactorVar.text!
        destVC.passed3CRString = carb3RatioVar.text!
    }
    

    

}
