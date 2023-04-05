//
//  ViewController.swift
//  LoginApp
//
//  Created by Степан Фоминцев on 04.04.2023.
//

import UIKit

class UserViewController: UIViewController {

    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
    }

    
    // MARK: - Private Methods
    private func setupBackground() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [UIColor.systemPurple.cgColor, UIColor.systemBlue.cgColor]
        gradientLayer.locations = [0.0, 2.0]
        gradientLayer.frame = view.bounds
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
