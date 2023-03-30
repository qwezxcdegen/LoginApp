//
//  UserViewController.swift
//  LoginApp
//
//  Created by Степан Фоминцев on 31.03.2023.
//

import UIKit

final class UserViewController: UIViewController {
    
    // MARK: - Private IBOutlets
    @IBOutlet weak private var welcomeLabel: UILabel!
    
    // MARK: - Public Properties
    var username: String!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
        welcomeLabel.text = "Welcome, \(username ?? "")"
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
