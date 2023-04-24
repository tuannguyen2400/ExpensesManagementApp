//
//  AddNewViewController.swift
//  ExpenseManagementApp
//
//  Created by MT on 19/04/2023.
//

import UIKit
import FloatingPanel

class AddNewViewController: UIViewController,FloatingPanelControllerDelegate,UITextFieldDelegate {
    
    @IBOutlet weak var expensesTextField: UITextField!
    @IBOutlet weak var categoryNameTextField: UITextField!
    @IBOutlet weak var moneyExpensesTextField: UITextField!
    @IBOutlet weak var DescriptionTextField: UITextField!
    
    @IBOutlet weak var categoryView: UIView!
   
    
    let fpc = FloatingPanelController()
    var categoryNameText : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryView.backgroundColor = .clear
        categoryView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(clickCategoryView)))
        self.categoryNameTextField.text = categoryNameText
        fpc.delegate = self
        applyShadowOnAddNewview(expensesTextField)
        applyShadowOnAddNewview(categoryNameTextField)
        applyShadowOnAddNewview(moneyExpensesTextField)
        applyShadowOnAddNewview(DescriptionTextField)
    }
    
    @objc func clickCategoryView () {
        let contentVC = storyboard?.instantiateViewController(identifier: "CategoryHalfScreen") as? CategoryHalfScreenViewController
        fpc.set(contentViewController: contentVC)
        fpc.addPanel(toParent: self)
    }
    //    @IBAction func showListComponents(_ sender: UIButton) {
    //        let contentVC = storyboard?.instantiateViewController(identifier: "CategoryHalfScreen") as? CategoryHalfScreenViewController
    //        fpc.set(contentViewController: contentVC)
    //        fpc.addPanel(toParent: self)
    //
    //    }
    
}




func applyShadowOnAddNewview(_ view: UIView) {
    view.layer.borderColor = UIColor.darkGray.withAlphaComponent(0.3).cgColor
    view.layer.borderWidth = 1
    view.layer.cornerRadius = 8
    view.layer.shadowColor = UIColor.darkGray.cgColor
    view.layer.shadowOffset = .zero
    view.clipsToBounds = true
}
