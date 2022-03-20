//
//  HomeViewController.swift
//  Silent Moon
//
//  Created by Максим Неверовский on 01.01.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var basicsView: UIView!
    @IBOutlet weak var relaxationView: UIView!
    @IBOutlet weak var dailyView: UIView!
    @IBOutlet weak var focusView: UIView!
    @IBOutlet weak var happinessView: UIView!
    @IBOutlet weak var secondFocusView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        basicsView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToCS(_:))))
        
        relaxationView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToCS(_:))))
        
        dailyView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToCS(_:))))
        
        focusView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToCS(_:))))
        
        happinessView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToCS(_:))))
        
        secondFocusView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToCS(_:))))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarItem.selectedImage = #imageLiteral(resourceName: "Group_6856-3-removebg-preview 1")
    }

    @objc func goToCS(_ gesture: UITapGestureRecognizer){
        let nextVC = СourseDetailsViewController()
        navigationController?.pushViewController(nextVC, animated: true)
        
    }

}
