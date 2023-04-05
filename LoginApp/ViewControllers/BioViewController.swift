//
//  BioViewController.swift
//  LoginApp
//
//  Created by Степан Фоминцев on 05.04.2023.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet weak var bioLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
        
        navigationItem.title = "\(person.name)'s Bio"
        
        bioLabel.text = person.description
    }

    private func setupBackground() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [UIColor.systemPurple.cgColor, UIColor.systemBlue.cgColor]
        gradientLayer.locations = [0.0, 2.0]
        gradientLayer.frame = view.bounds
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
