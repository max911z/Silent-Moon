//
//  MeditateViewController.swift
//  Silent Moon
//
//  Created by Максим Неверовский on 04.01.2022.
//

import UIKit

class MeditateViewController: UIViewController {
    
    @IBOutlet weak var dailyCalm: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dailyCalm.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToCS(_:))))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarItem.selectedImage = #imageLiteral(resourceName: "Group_6857-2-removebg-preview")
    }
    
    @objc func goToCS(_ gesture: UITapGestureRecognizer){
        let nextVC = СourseDetailsViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
