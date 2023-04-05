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
    private let user = User.getUser()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user.username
        passwordTF.text = user.password
    }

    // MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabbarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabbarVC.viewControllers else { return }
        guard let homeVC = viewControllers[0] as? HomeViewController else { return }
        guard let userNav = viewControllers[1] as? UINavigationController else { return }
        guard let userVC = userNav.topViewController as? UserViewController else { return }
        homeVC.user = user
        userVC.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction private func loginButtonPressed() {
        guard let login = userNameTF.text, let password = passwordTF.text else {
            return
        }
        guard login == user.username, password == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct data"
            )
            return
        }
        performSegue(withIdentifier: "enteredSegue", sender: nil)
    }
    
    @IBAction private func forgotUserNamePressed() {
        showAlert(title: "Oops!", message: "Your name is \(user.username)")
    }
    
    @IBAction private func forgotPasswordPressed() {
        showAlert(title: "Oops!", message: "Your password is \(user.password)")
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

