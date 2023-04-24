//
//  CategoryHalfScreenViewController.swift
//  ExpenseManagementApp
//
//  Created by MT on 21/04/2023.
//

import UIKit

class CategoryHalfScreenViewController: UIViewController , UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    struct categoriesComponents {
        let imageName : String
        let titleName : String
    }
    let data: [categoriesComponents] = [
        categoriesComponents(imageName: "Groceries", titleName:"Grocery"),
        categoriesComponents(imageName: "Gifts", titleName:"Gifts"),
        categoriesComponents(imageName: "Cafe", titleName:"Bar & Cafe"),
        categoriesComponents(imageName: "Health", titleName:"Health"),
        categoriesComponents(imageName: "Transportation", titleName:"Commute"),
        categoriesComponents(imageName: "Electronics", titleName:"Electronics"),
        categoriesComponents(imageName: "Laundry", titleName:"Laundry"),
        categoriesComponents(imageName: "Liquor", titleName:"Liquor"),
        categoriesComponents(imageName: "Restaurant", titleName:"Restaurant"),
        
    ]
    @IBOutlet weak var addAmountBtnOutlet: UIButton!
    @IBOutlet weak var  categoryCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryCollectionView.register(UICollectionViewCell.self , forCellWithReuseIdentifier: "CategoryCell")
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        applyShadowOnCategoryHalfview(addAmountBtnOutlet)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let namecategory = data[indexPath.row]
        let cell = categoryCollectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
        cell.categoryImg.image = UIImage(named: namecategory.imageName)
        cell.nameCategory.text = namecategory.titleName
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let categoryLogoWidth = UIScreen.main.bounds.width
        let cellWidth = (categoryLogoWidth - 3) / 3
        
        return CGSize(width: cellWidth , height: cellWidth)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let namecategory = data[indexPath.row]
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let addnewVc = sb.instantiateViewController(withIdentifier: "AddNewViewController") as! AddNewViewController
        addnewVc.categoryNameText = namecategory.titleName
        self.navigationController?.pushViewController(addnewVc, animated: true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1   }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
        
        
    }
    
    @IBAction func ClickAddNewDetailsVC(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AddAmountViewController") as! AddAmountViewController
        self.navigationController?.pushViewController(vc,
         animated: true)
    }
    
}
func applyShadowOnCategoryHalfview(_ view: UIView) {
    view.layer.borderColor = UIColor.darkGray.withAlphaComponent(0.3).cgColor
    view.layer.borderWidth = 1
    view.layer.cornerRadius = 8
    view.layer.shadowColor = UIColor.darkGray.cgColor
    view.layer.shadowOffset = .zero
    view.clipsToBounds = true
}
 
