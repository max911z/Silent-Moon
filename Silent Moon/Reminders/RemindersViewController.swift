//
//  RemindersViewController.swift
//  Silent Moon
//
//  Created by Максим Неверовский on 07.12.2021.
//

import UIKit

class RemindersViewController: UIViewController {
    @IBOutlet weak var sunday: UIButton!
    @IBOutlet weak var monday: UIButton!
    @IBOutlet weak var tuesday: UIButton!
    @IBOutlet weak var wednesday: UIButton!
    @IBOutlet weak var thursday: UIButton!
    @IBOutlet weak var friday: UIButton!
    @IBOutlet weak var saturday: UIButton!
    @IBOutlet weak var StackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (UIScreen.main.bounds.size.width == 428){
            StackView.spacing = 17
        } else if (UIScreen.main.bounds.size.width == 414){
            StackView.spacing = 15
        } else if (UIScreen.main.bounds.size.width == 390){
            StackView.spacing = 11
        } else if (UIScreen.main.bounds.size.width == 375){
            StackView.spacing = 9
        } else{
            StackView.spacing = 13
        }
        
        sunday.layer.borderColor = #colorLiteral(red: 0.6920493245, green: 0.7041167617, blue: 0.7508487105, alpha: 1)
        monday.layer.borderColor = #colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)
        tuesday.layer.borderColor = #colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)
        wednesday.layer.borderColor = #colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)
        thursday.layer.borderColor = #colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)
        friday.layer.borderColor = #colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)
        saturday.layer.borderColor = #colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)
    }

    func changecolor(button: UIButton){
        if button.titleColor(for: .normal) != #colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1) {
            button.setTitleColor (#colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1), for: .normal)
            button.backgroundColor = UIColor.white
            button.layer.borderWidth = 1
            button.layer.borderColor = #colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1)
        }
        else {
            button.setTitleColor(UIColor(red: 254, green: 255, blue: 254, alpha: 1), for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.2470588235, green: 0.2549019608, blue: 0.3058823529, alpha: 1)
            button.layer.borderWidth = 0
        }
    }
    
    @IBAction func suChangeColor(_ sender: UIButton) {
        changecolor(button: sender)
    }
    
    @IBAction func goToTabBar(_ sender: Any) {
        let nextVC = UITabBarController()
        nextVC.self.tabBar.layer.shadowColor = UIColor(red: 0.329, green: 0.342, blue: 0.361, alpha: 0.1).cgColor
        nextVC.self.tabBar.layer.shadowOpacity = 1
        nextVC.self.tabBar.layer.shadowOffset = CGSize(width: 2, height: -5)
        nextVC.self.tabBar.layer.shadowRadius = 17
        nextVC.self.tabBar.layer.borderColor = UIColor.clear.cgColor
        nextVC.self.tabBar.layer.borderWidth = 0
        nextVC.self.tabBar.clipsToBounds = false
        nextVC.self.tabBar.backgroundColor = UIColor.white
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        nextVC.self.tabBar.tintColor = UIColor(named: "tabBarColor")
        
        let home = HomeViewController()
        home.title = "Home"
        
        let sleep = SleepViewController()
        sleep.title = "Sleep"
        
        let meditate = MeditateViewController()
        meditate.title = "Meditate"
        
        let music = SecondMusicViewController()
        music.title = "Music"
        
        let afsar = AfsarViewController()
        afsar.title = "Afsar"
        
        home.tabBarItem.image = #imageLiteral(resourceName: "Vector-2")
        sleep.tabBarItem.image = #imageLiteral(resourceName: "Vector")
        meditate.tabBarItem.image = #imageLiteral(resourceName: "Group-2")
        music.tabBarItem.image = #imageLiteral(resourceName: "Group-3")
        afsar.tabBarItem.image = #imageLiteral(resourceName: "Group-4")
        
        nextVC.setViewControllers([home, sleep, meditate, music, afsar], animated: false)
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
