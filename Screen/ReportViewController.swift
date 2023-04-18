//
//  ReportViewController.swift
//  ExpenseManagementApp
//
//  Created by MT on 17/04/2023.
//

import UIKit

class ReportViewController: UIViewController {
    
    @IBOutlet weak var downloadReportClick: UIButton!
    @IBOutlet weak var reportCalendarOutlet: UIView!
    @IBOutlet weak var ReportTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ReportTableView.dataSource = self
        ReportTableView.delegate = self
        downloadReportClick.layer.cornerRadius = 25
        applyShadowOnReportView(reportCalendarOutlet)
    }
    
    struct components {
        let imageName : String
        let titleName : String
    }
    let data: [components] = [
        components(imageName: "Transportation", titleName:"Transportation"),
        components(imageName: "Health", titleName:"Health"),
        components(imageName: "Groceries", titleName:"Personal"),
        components(imageName: "Gifts", titleName:"Gifts"),
        components(imageName: "Electronics", titleName:"Electronics"),
        components(imageName: "Cafe", titleName:"Caffe & Bar"),
        
    ]
}
func applyShadowOnReportView(_ view: UIView) {
    view.layer.cornerRadius = 8
    view.layer.shadowColor = UIColor.darkGray.cgColor
    view.layer.shadowOpacity = 0.5
    view.layer.shadowOffset = .zero
    view.layer.shadowRadius = 2
}
extension ReportViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let components = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReportTableViewCell") as! ReportTableViewCell
        cell.componentImg.image = UIImage(named: components.imageName)
        cell.nameComponentsOutlet.text = components.titleName
        return cell
    }
    //    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    //
    //    }
    //    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //        <#code#>
    //    }
    
    
    
    
    func applyShadowOnReportView(_ view: UIView) {
        view.layer.cornerRadius = 8
        view.layer.shadowColor = UIColor.darkGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 2
    }
}
