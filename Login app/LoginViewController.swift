//
//  ViewController.swift
//  Login app
//
//  Created by Эмиль on 08.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var loginInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginInButton.layer.cornerRadius = 8
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        
        if userNameTF.text == "user" && passwordTF.text == "123" {
            welcomeVC.welcomeText = userNameTF.text
        } else {
            showAlert(title: "Error", message: "Wrong user name or password")
            passwordTF.text = ""
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUserName() {
        showAlert(title: "Username", message: "user")
    }
    
    
    @IBAction func Forgotpassworf() {
        showAlert(title: "Password", message: "123")
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
}
