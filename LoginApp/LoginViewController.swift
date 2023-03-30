//
//  ViewController.swift
//  LoginApp
//
//  Created by Степан Фоминцев on 31.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - Private IBOutlets
    @IBOutlet weak private var userNameTF: UITextField!
    @IBOutlet weak private var passwordTF: UITextField!
    
    // MARK: - Private Properties
    private let adminLogin = "Admin"
    private let adminPassword = "1234"

    // MARK: - Private IBActions
    @IBAction private func loginButtonPressed() {
        guard let login = userNameTF.text, let password = passwordTF.text
        else {
            return
        }
        
        guard !login.isEmpty, !password.isEmpty
        else {
            showAlert(title: "Error", message: "Login or password is empty")
            return
        }
        
        guard login == adminLogin, password == adminPassword
        else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct data"
            )
            return
        }
    }
    
    @IBAction private func forgotUserNamePressed() {
        showAlert(title: "Oops!", message: "Your name is \(adminLogin)")
    }
    
    @IBAction private func forgotPasswordPressed() {
        showAlert(title: "Oops!", message: "Your password is \(adminPassword)")
    }
    
    // MARK: - Private Methods
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

