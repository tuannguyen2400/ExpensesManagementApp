//
//  ReportViewController.swift
//  ExpenseManagementApp
//
//  Created by MT on 17/04/2023.
//

import UIKit

class ReportViewController: UIViewController {

    @IBOutlet weak var ComponentsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

}
func applyShadowOnReportView(_ view: UIView) {
    view.layer.cornerRadius = 8
    view.layer.shadowColor = UIColor.darkGray.cgColor
    view.layer.shadowOpacity = 0.5
    view.layer.shadowOffset = .zero
    view.layer.shadowRadius = 2
}
