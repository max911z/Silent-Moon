//
//  ChooseTopicViewController.swift
//  Silent Moon
//
//  Created by Максим Неверовский on 07.12.2021.
//

import UIKit

class ChooseTopicViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var reduceStressView: UIView!
    @IBOutlet weak var improvePerformaneeView: UIView!
    @IBOutlet weak var increaseHappiness: UIView!
    @IBOutlet weak var reduceAnxiety: UIView!
    @IBOutlet weak var personalGrowth: UIView!
    @IBOutlet weak var betterSleep: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let boldText = "What Brings you\n"
        let attrs = [NSAttributedString.Key.font:UIFont(name: "Helvetica Neue Bold", size: 28)]
        
        let attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

        let normalText = "to Silent Moon?"
        let normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        textLabel.attributedText = attributedString

        reduceStressView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToReminders(_:))))
        
        improvePerformaneeView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToReminders(_:))))
        
        increaseHappiness.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToReminders(_:))))
        
        reduceAnxiety.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToReminders(_:))))
        
        personalGrowth.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToReminders(_:))))
        
        betterSleep.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToReminders(_:))))
    }

    @objc func goToReminders(_ gesture: UITapGestureRecognizer){
        let nextVC = RemindersViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
