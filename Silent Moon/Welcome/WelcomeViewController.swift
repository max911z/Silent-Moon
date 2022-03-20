//
//  WelcomeViewController.swift
//  Silent Moon
//
//  Created by Максим Неверовский on 06.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var getStartedButton: UIButton!
    
    
    var userName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        let boldText = "Hi " + userName + ", Welcome\n"
        let attrs = [NSAttributedString.Key.font:UIFont(name: "Helvetica Neue Bold", size: 30)]
        
        let attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

        let normalText = "to Silent Moon"
        let normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        textLabel.attributedText = attributedString
        getStartedButton.layer.cornerRadius = 30
    }

    @IBAction func goToWelcomeViewController(_ sender: Any) {
        let vc = ChooseTopicViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}
