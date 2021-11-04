//
//  LogInViewController.swift
//  Alert
//
//  Created by Инна Степанова on 01.11.2021.
//

import UIKit

class LogInViewController: UIViewController {
    private let user = UserInfo.getUser()
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "logIn" {
            guard let tabBarVC = segue.destination as? UITabBarController else { return }
            guard let helloVC = tabBarVC.viewControllers?.first as? HelloViewController else { return }
            helloVC.user = user
        }
    }
    
    @IBAction func logInButtonPressed(_ sender: Any) {
        if userNameTextField.text == user.userName && passwordTextField.text == user.password {
            performSegue(withIdentifier: "logIn", sender: nil)
            
        }
    }
    @IBAction func forgotPasswordButtonPressed() {
        alertController(title: "Ups...", message: "Password - Klusha")
    }
    @IBAction func forgotUserNameButtonPressed() {
        alertController(title: "Ups...", message: "User Name - Inna")
    }
    
    @IBAction func unwind (segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
}

extension LogInViewController: UITextFieldDelegate {
    private func alertController(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { // скрытие клавиатуры тапом по экрану
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
