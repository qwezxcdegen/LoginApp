//
//  ViewController.swift
//  LoginApp
//
//  Created by Степан Фоминцев on 31.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet weak private var userNameTF: UITextField!
    
    @IBOutlet weak private var passwordTF: UITextField!
    
    private let adminLogin = "Admin"
    private let adminPassword = "1234"

    
    @IBAction private func loginButtonPressed() {
        guard let login = userNameTF.text, let password = passwordTF.text
        else {
            return
        }
        guard !login.isEmpty, !password.isEmpty else {
            showAlert(title: "Error", message: "Login or password is empty")
            return
        }
        guard login == adminLogin, password == adminPassword else {
            showAlert(title: "Error", message: "Login or password is wrong")
            return
        }
        
    }
    @IBAction private func forgotUserNamePressed() {
        showAlert(title: "Oops!", message: "Your name is \(adminLogin)")
    }
    
    @IBAction private func forgotPasswordPressed() {
        showAlert(title: "Oops!", message: "Your password is \(adminPassword)")
    }
    
    private func showAlert(title: String?, message: String?) {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        
        alertController.addAction(okAction)
        
        present(alertController, animated: true)
    }

}

