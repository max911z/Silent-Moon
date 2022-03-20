//
//  SignUpViewController.swift
//  Silent Moon
//
//  Created by Максим Неверовский on 28.09.2021.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        facebookButton.layer.cornerRadius = 30;
        googleButton.layer.cornerRadius = 30;
        googleButton.layer.borderWidth = 1
        googleButton.layer.borderColor = UIColor(red: 0.922, green: 0.918, blue: 0.925, alpha: 1).cgColor
        nameView.layer.cornerRadius = 15
        emailView.layer.cornerRadius = 15
        passwordView.layer.cornerRadius = 15
        logInButton.layer.cornerRadius = 30
    }

    @IBAction func privacePolicy(_ sender: Any) {
        let alert = UIAlertController(title: "Ooops...", message: "Privacy policy will be here soon", preferredStyle: .alert)
        let okeyButton = UIAlertAction(title: "Ok", style: .cancel )
        alert.addAction(okeyButton)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func GoToSignInSignUpViewController(_ sender: Any) {        
            navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goToWelcomeViewController(_ sender: Any) {
        if nameTextField.text == "" {
            let alert = UIAlertController(title: "Warning!", message: "Enter your username", preferredStyle: .alert)
            let okeyButton = UIAlertAction(title: "Ok", style: .cancel )
            alert.addAction(okeyButton)
            self.present(alert, animated: true, completion: nil)
        }
        else{
            let vc = WelcomeViewController()
            vc.userName = nameTextField.text!
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
