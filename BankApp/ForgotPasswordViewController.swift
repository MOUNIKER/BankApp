

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var newPasswordTextField: UITextField!
    @IBOutlet weak var ReEnterPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.becomeFirstResponder()
        usernameTextField.delegate = self
        newPasswordTextField.delegate = self
        ReEnterPasswordTextField.delegate = self
    }
    
    @IBAction func Cancel(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: true)
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
extension ForgotPasswordViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
