//
//  ForgotPasswordViewController.swift
//  BankApp
//
//  Created by Siva Mouniker  on 31/05/23.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var newPasswordTextField: UITextField!
    @IBOutlet weak var ReEnterPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ResetPassword(_ sender: UIButton) {
      
        guard let username = usernameTextField.text, !username.isEmpty else {
                    showAlert(message: "Please enter a username")
                    return
                }
                
                guard let password = newPasswordTextField.text, !password.isEmpty else {
                    showAlert(message: "Please enter a password")
                    return
                }
        
        guard let repassword = ReEnterPasswordTextField.text, !repassword.isEmpty else {
            showAlert(message: "Please enter a password")
            return
        }
        
        if let index = usernames.firstIndex(of: username) {

            if (password == repassword) {
                // Passwords match, proceed with sign up
                usernames.append(username)
                passwords.append(password)
                
                // Update the password in the array or perform the necessary logic
                passwords[index] = password
            }
                   showAlert(message: "Password reset successful")
               } else {
                   showAlert(message: "Invalid username")
               }
        
        
        
        
        usernameTextField.text = ""
        newPasswordTextField.text = ""
        ReEnterPasswordTextField.text = ""
        
    }
    
    
    func showAlert(message: String) {
            let alert = UIAlertController(title: "Status", message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        
        
        }

}
