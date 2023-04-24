//
//  AddAmountViewController.swift
//  ExpenseManagementApp
//
//  Created by MT on 23/04/2023.
//

import UIKit

class AddAmountViewController: UIViewController {

    @IBOutlet weak var categoryNameTextField: UITextField!
    @IBOutlet weak var addAmountTextField: UITextField!
    @IBOutlet weak var addAmountDescriptionTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        applyShadowOnAddAmountview(categoryNameTextField)
        applyShadowOnAddAmountview(addAmountDescriptionTextField)
        applyShadowOnAddAmountview(addAmountTextField)
      
        
    }
    

   
}
func applyShadowOnAddAmountview(_ view: UIView) {
    view.layer.borderColor = UIColor.darkGray.withAlphaComponent(0.3).cgColor
    view.layer.borderWidth = 1
    view.layer.cornerRadius = 8
    view.layer.shadowColor = UIColor.darkGray.cgColor
    view.layer.shadowOffset = .zero
    view.clipsToBounds = true
}
 
