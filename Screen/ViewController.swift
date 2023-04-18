//
//  ViewController.swift
//  ExpenseManagementApp
//
//  Created by MT on 14/04/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var addNewClick: UIButton!
    @IBOutlet weak var TotalSpendingContainer
    : UIView!
    @IBOutlet weak var ExpensesTableOneContainer: UIView!
    @IBOutlet weak var ExpensesTableTwoContainer: UIView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        applyShadowOnview(dateTF)
        applyShadowOnview(TotalSpendingContainer)
        applyShadowOnview(ExpensesTableOneContainer)
        applyShadowOnview(ExpensesTableTwoContainer)
        addNewClick.layer.cornerRadius = 20
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(dateChange(datePicker:)), for: UIControl.Event.valueChanged)
        datePicker.frame.size = CGSize(width: 0, height: 300)
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.maximumDate = Date()
        dateTF.inputView = datePicker
        dateTF.text = formatDate(date: Date()) // todays Date
        
        
        
        
        
        
    }
    
    @objc func dateChange(datePicker: UIDatePicker)
    {
        dateTF.text = formatDate(date: datePicker.date)
    }
    
    func formatDate(date: Date) -> String
    {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM,yyyy"
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

