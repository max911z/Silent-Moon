//
//  AppDelegate.swift
//  Silent Moon
//
//  Created by Максим Неверовский on 19.09.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
   
 var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        window = UIWindow(frame: UIScreen.main.bounds)
        let navController = UINavigationController()
        let homeVC = SignInSignUpViewController()
        navController.pushViewController(homeVC, animated: false)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        return true
    }

  

}

