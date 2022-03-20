//
//  SleepViewController.swift
//  Silent Moon
//
//  Created by Максим Неверовский on 04.01.2022.
//

import UIKit



class SleepViewController: UIViewController {
    
    var window: UIWindow?
    @IBOutlet weak var oceanMoonView: UIView!
    @IBOutlet weak var nightIslandView: UIView!
    @IBOutlet weak var focusView: UIView!
    @IBOutlet weak var sweetSleepView: UIView!
    @IBOutlet weak var secondFocusView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let navigationController = self.navigationController else { return }
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        var navigationArray = navigationController.viewControllers
        let temp = navigationArray.last
        navigationArray.removeAll()
        navigationArray.append(temp!)
        self.navigationController?.viewControllers = navigationArray
        let popUpVC = WelcomeSleepViewController()
        self.addChild(popUpVC)
        popUpVC.view.frame = self.view.frame
        self.view.addSubview(popUpVC.view)
        popUpVC.didMove(toParent: self) // 5
        
        oceanMoonView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToSleepMusic(_:))))
        
        nightIslandView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToPlayOption(_:))))
        
        focusView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToPlayOption(_:))))
        
        sweetSleepView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToPlayOption(_:))))
        
        secondFocusView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToPlayOption(_:))))
}
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.tintColor = UIColor(named: "tabBarColor")
        tabBarItem.selectedImage = #imageLiteral(resourceName: "Group_6856-4-removebg-preview")
        tabBarController?.tabBar.backgroundColor = UIColor(named: "sleepTabBarColor")
        tabBarController?.tabBar.unselectedItemTintColor = UIColor(named: "tabBarColorSleep")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        tabBarController?.tabBar.layer.shadowColor = UIColor(red: 0.329, green: 0.342, blue: 0.361, alpha: 0.1).cgColor
        tabBarController?.tabBar.layer.shadowOpacity = 1
        tabBarController?.tabBar.layer.shadowOffset = CGSize(width: 2, height: -5)
        tabBarController?.tabBar.layer.shadowRadius = 17
        tabBarController?.tabBar.layer.borderColor = UIColor.clear.cgColor
        tabBarController?.tabBar.layer.borderWidth = 0
        tabBarController?.tabBar.clipsToBounds = false
        tabBarController?.tabBar.backgroundColor = UIColor.white
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        tabBarController?.tabBar.tintColor = UIColor(named: "tabBarColor")
        tabBarController?.tabBar.unselectedItemTintColor = .gray
    }
    
    @objc func goToSleepMusic(_ gesture: UITapGestureRecognizer){
        guard let navigationController = self.navigationController else { return }
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        var navigationArray = navigationController.viewControllers
        let temp = navigationArray.last
        navigationArray.removeAll()
        navigationArray.append(temp!)
        self.navigationController?.viewControllers = navigationArray
        let popUpVC = SleepMusicViewController()
        self.addChild(popUpVC)
        popUpVC.view.frame = self.view.frame
        self.view.addSubview(popUpVC.view)
        popUpVC.didMove(toParent: self) // 5
    }
    
    @objc func goToPlayOption(_ gesture: UITapGestureRecognizer){
        guard let navigationController = self.navigationController else { return }
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        var navigationArray = navigationController.viewControllers
        let temp = navigationArray.last
        navigationArray.removeAll()
        navigationArray.append(temp!)
        self.navigationController?.viewControllers = navigationArray
        let popUpVC = PlayOptionViewController()
        self.addChild(popUpVC)
        popUpVC.view.frame = self.view.frame
        self.view.addSubview(popUpVC.view)
        popUpVC.didMove(toParent: self) // 5
        
    }
}
