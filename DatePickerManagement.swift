//
//  DatePickerManagement.swift
//  ExpenseManagementApp
//
//  Created by MT on 19/04/2023.
//

import Foundation

//let datePicker = UIDatePicker()
//let toolbar = UIToolbar()
//func createDatePicker () {
//    toolbar.sizeToFit()
//    let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: nil)
//    toolbar.setItems([doneBtn], animated: true)
//    datePicker.datePickerMode = .date
//    datePicker.addTarget(self, action: #selector(dateChange(datePicker:)), for: UIControl.Event.valueChanged)
//    datePicker.frame.size = CGSize(width: 300, height: 300)
//    datePicker.preferredDatePickerStyle = .inline
//    datePicker.maximumDate = Date()
//    dateTF.inputView = datePicker
//    dateTF.text = formatDate(date: Date()) // todays Date)
//}
//@objc func dateChange(datePicker: UIDatePicker)
//{
//    dateTF.text = "\(datePicker.date)"
//    self.view.endEditing(true)
//}
//
//func formatDate(date: Date) -> String
//{
//    let formatter = DateFormatter()
//    formatter.dateFormat = "MMM,yyyy"
//    return formatter.string(from: date)
//}
//
