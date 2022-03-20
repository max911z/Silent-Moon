//
//  SleepMusicViewController.swift
//  Silent Moon
//
//  Created by Максим Неверовский on 21.01.2022.
//

import UIKit

class SleepMusicViewController: UIViewController {

    var window: UIWindow?
    @IBOutlet var nigtsIslandView: UIView!
    @IBOutlet var goodNightView: UIView!
    @IBOutlet var sweetSleepView: UIView!
    @IBOutlet var moonCloudsView: UIView!
    @IBOutlet var nightIslandSecondView: UIView!
    @IBOutlet var goodNightSecondView: UIView!
    @IBOutlet var sweetSleepSecondView: UIView!
    @IBOutlet var moonCloudsSecondView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nigtsIslandView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToPlayOption(_:))))
        
        nightIslandSecondView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToPlayOption(_:))))
        
        sweetSleepView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToPlayOption(_:))))
        
        sweetSleepSecondView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToPlayOption(_:))))
        
        goodNightView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToPlayOption(_:))))
        
        goodNightSecondView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToPlayOption(_:))))
        
        moonCloudsView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToPlayOption(_:))))
        
        moonCloudsSecondView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToPlayOption(_:))))
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
    
    @IBAction func goBack(_ sender: Any) {
        UIView.animate(withDuration: 0.24, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.35, y: 1.35)
            self.view.alpha = 0.0
        }) { _ in
            self.view.removeFromSuperview()
        }
    }
}
