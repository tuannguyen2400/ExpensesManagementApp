//
//  ViewController.swift
//  ExpenseManagementApp
//
//  Created by MT on 14/04/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TotalSpendingContainer
    : UIView!
    @IBOutlet weak var ExpensesTableOneContainer: UIView!
    
    @IBOutlet weak var ExpensesTableTwoContainer: UIView!
    
   
    @IBOutlet weak var CalendarOutlet: UIView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        applyShadowOnview(TotalSpendingContainer)
        applyShadowOnview(ExpensesTableOneContainer)
        applyShadowOnview(ExpensesTableTwoContainer)
        
       
        CalendarOutlet.layer.cornerRadius = 10
        
        
        
        
        
        
        
    }
    
   
    
    func applyShadowOnview(_ view: UIView) {
        view.layer.cornerRadius = 8
        view.layer.shadowColor = UIColor.darkGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 2
    }
    
    
    
}

