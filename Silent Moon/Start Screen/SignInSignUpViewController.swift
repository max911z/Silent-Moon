//
//  SignInSignUpViewController.swift
//  Silent Moon
//
//  Created by Максим Неверовский on 19.09.2021.
//

import UIKit

class SignInSignUpViewController: UIViewController {

    @IBOutlet weak var SignUpButton: UIButton!
    @IBOutlet var SignInTapGesture: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        SignUpButton.layer.cornerRadius = 30;
    }
    
   
    @IBAction func GoToSignUpViewController(_ sender: Any) {
        let vc = SignUpViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func GoToSignInViewController(_ sender: Any) {
        let vc2 = SignInViewController()
        navigationController?.pushViewController(vc2, animated: false)
    }
}
