//
//  SettingsViewController.swift
//  ExpenseManagementApp
//
//  Created by MT on 17/04/2023.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var settingsTableView: UITableView!
    struct settingsComponents {
        let imageName : String
        let titleName : String
    }
    
    let data: [settingsComponents] = [
        settingsComponents(imageName: "ManagementCategories", titleName:"Management categories"),
        settingsComponents(imageName: "pdf", titleName:"Export to PDF"),
        settingsComponents(imageName: "attach_money_black_24dp 1", titleName:"Choose currency"),
        settingsComponents(imageName: "translate_black_24dp 1", titleName:"Choose lanaguage"),
        settingsComponents(imageName: "quiz_black_24dp 1", titleName:"Frequently asked questions"),
        settingsComponents(imageName: "logout_black_24dp 1", titleName:"Logout"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsTableView.dataSource = self
        settingsTableView.delegate = self
    }
}

extension SettingsViewController : UITableViewDelegate ,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let settingscomponents = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell") as! SettingsTableViewCell
        cell.reportComponentsImg.image = UIImage(named: settingscomponents.imageName)
        cell.nameSettingsComponents.text = settingscomponents.titleName
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


