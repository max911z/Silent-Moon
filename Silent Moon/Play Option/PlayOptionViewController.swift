//
//  PlayOptionViewController.swift
//  Silent Moon
//
//  Created by Максим Неверовский on 21.01.2022.
//

import UIKit

class PlayOptionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
    }

    @IBAction func goBack(_ sender: Any) {
        UIView.animate(withDuration: 0.24, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.35, y: 1.35)
            self.view.alpha = 0.0
        }) { _ in
            self.view.removeFromSuperview()
        }
        self.tabBarController?.tabBar.isHidden = false
    }
    
    @IBAction func goToSleepMusic(_ sender: Any) {
        let nextVC = MusicViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
