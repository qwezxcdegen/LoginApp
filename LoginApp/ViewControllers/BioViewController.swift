//
//  BioViewController.swift
//  LoginApp
//
//  Created by Степан Фоминцев on 05.04.2023.
//

import UIKit

class BioViewController: UIViewController {

    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(person.name)'s Bio"
    }

}
