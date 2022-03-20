//
//  SignInViewController.swift
//  Silent Moon
//
//  Created by Максим Неверовский on 28.09.2021.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var GoogleButton: UIButton!
    @IBOutlet weak var ContinueButton: UIButton!
    @IBOutlet weak var EmailView: UIView!
    @IBOutlet weak var PasswordView: UIView!
    @IBOutlet weak var LogInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ContinueButton.layer.cornerRadius = 30;
        GoogleButton.layer.cornerRadius = 30;
        GoogleButton.layer.borderWidth = 1
        GoogleButton.layer.borderColor = UIColor(red: 0.922, green: 0.918, blue: 0.925, alpha: 1).cgColor
        EmailView.layer.cornerRadius = 15;
        PasswordView.layer.cornerRadius = 15;
        LogInButton.layer.cornerRadius = 30;
    }
    @IBAction func GoToSignInSignUpViewController(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func GoToWelcomViewController(_ sender: Any) {
        let vc = WelcomeViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func GoToSignUpViewController(_ sender: Any) {
        let vc = SignUpViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    

}
