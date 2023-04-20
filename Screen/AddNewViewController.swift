//
//  AddNewViewController.swift
//  ExpenseManagementApp
//
//  Created by MT on 19/04/2023.
//

import UIKit

class AddNewViewController: UIViewController {

    @IBOutlet weak var expensesTextField: UITextField!
    @IBOutlet weak var categoryNameTextField: UITextField!
    
    @IBOutlet weak var moneyExpensesTextField: UITextField!
    
    @IBOutlet weak var DescriptionTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyShadowOnAddNewview(expensesTextField)
        applyShadowOnAddNewview(categoryNameTextField)
        applyShadowOnAddNewview(moneyExpensesTextField)
        applyShadowOnAddNewview(DescriptionTextField)
    }
    

    @IBAction func showListComponents(_ sender: UIButton) {
        
        
    }
    
}

func applyShadowOnAddNewview(_ view: UIView) {
    view.layer.cornerRadius = 8
    view.layer.shadowColor = UIColor.darkGray.cgColor
    view.layer.shadowOpacity = 0.5
    view.layer.shadowOffset = .zero
    view.layer.shadowRadius = 2
}
