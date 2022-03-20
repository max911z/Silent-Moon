//
//  CourseDetailsController.swift
//  Silent Moon
//
//  Created by Максим Неверовский on 01.01.2022.
//

import UIKit

class СourseDetailsViewController: UIViewController {
    
    @IBOutlet weak var focusVIew: UIView!
    @IBOutlet weak var focusViewImage: UIView!
    @IBOutlet weak var bodyView: UIView!
    @IBOutlet weak var bodyViewImage: UIView!
    @IBOutlet weak var makingHappinessView: UIView!
    @IBOutlet weak var makingHappinessViewImage: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        focusViewImage.layer.borderColor = UIColor(red: 0.631, green: 0.643, blue: 0.698, alpha: 1).cgColor
        bodyViewImage.layer.borderColor = UIColor(red: 0.631, green: 0.643, blue: 0.698, alpha: 1).cgColor
        makingHappinessViewImage.layer.borderColor = UIColor(red: 0.631, green: 0.643, blue: 0.698, alpha: 1).cgColor
        
        focusVIew.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToMusic(_:))))
        bodyView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToMusic(_:))))
        makingHappinessView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(goToMusic(_:))))
    }

    @IBAction func goBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
        
    @objc func goToMusic(_ gesture: UITapGestureRecognizer){
        let nextVC = SecondMusicViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
