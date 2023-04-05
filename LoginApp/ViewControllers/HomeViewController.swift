//
//  UserViewController.swift
//  LoginApp
//
//  Created by Степан Фоминцев on 31.03.2023.
//

import UIKit

final class HomeViewController: UIViewController {
    
    // MARK: - Private IBOutlets
    @IBOutlet weak private var welcomeLabel: UILabel!
    
    // MARK: - Public Properties
    var user: User!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
        welcomeLabel.text = "Welcome, \(user.username)"
    }
    
    // MARK: - IBActions
    @IBAction func logoutPressed() {
        dismiss(animated: true)
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
