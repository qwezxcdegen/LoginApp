//
//  ViewController.swift
//  LoginApp
//
//  Created by Степан Фоминцев on 04.04.2023.
//

import UIKit

class UserViewController: UIViewController {
    @IBOutlet weak var personaImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var briefLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
        
        let person = user.person
        
        personaImageView.image = person.getPhoto()?.withTintColor(.black, renderingMode: .alwaysTemplate)
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        ageLabel.text = String(person.age)
        statusLabel.text = person.status
        briefLabel.text = person.brief
        
        navigationItem.title = "\(person.name) \(person.surname)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.person = user.person
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
