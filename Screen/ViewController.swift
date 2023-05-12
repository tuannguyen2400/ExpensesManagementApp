//
//  ViewController.swift
//  ExpenseManagementApp
//
//  Created by MT on 14/04/2023.
//

import UIKit
import SQLite
import SQLite3

class ViewController: UIViewController {
    
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var addNewClick: UIButton!
    @IBOutlet weak var TotalSpendingContainer: UIView!
    
    let datePicker = UIDatePicker()
    let toolbar = UIToolbar()
    
    @IBOutlet weak var ExpensesTableOneContainer: UIView!
    @IBOutlet weak var ExpensesTableTwoContainer: UIView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
        applyShadowOnview(dateTF)
        applyShadowOnview(TotalSpendingContainer)
        applyShadowOnview(ExpensesTableOneContainer)
        applyShadowOnview(ExpensesTableTwoContainer)
        addNewClick.layer.cornerRadius = 20
    }
    
    @IBAction func addNewButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AddNewViewController") as! AddNewViewController
        self.navigationController?.pushViewController(vc,animated: true)
    }
    
    func createDatePicker () {
        toolbar.sizeToFit()
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: nil)
        toolbar.setItems([doneBtn], animated: true)
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(dateChange(datePicker:)), for: UIControl.Event.valueChanged)
        datePicker.frame.size = CGSize(width: 300, height: 300)
        datePicker.preferredDatePickerStyle = .inline
        datePicker.maximumDate = Date()
        dateTF.inputView = datePicker
        dateTF.text = formatDate(date: Date()) // todays Date)
    }
    
    @objc func dateChange(datePicker: UIDatePicker)
    {
        dateTF.text = "\(datePicker.date)"
        self.view.endEditing(true)
    }
    
    func formatDate(date: Date) -> String
    {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM,yyyy"
        return formatter.string(from: date)
    }
    
    func applyShadowOnview(_ view: UIView) {
        view.layer.cornerRadius = 8
        view.layer.shadowColor = UIColor.darkGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 2
    }
}


