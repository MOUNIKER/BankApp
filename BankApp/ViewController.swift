import UIKit
var usernames: [String] = ["mou"]
var passwords: [String] = ["123"]
class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.becomeFirstResponder()
        logInButton.layer.cornerRadius = 7
        usernameTextField.layer.borderWidth = 2
        usernameTextField.layer.cornerRadius = 10
        passwordTextField.layer.cornerRadius = 10
        usernameTextField.layer.borderColor = UIColor.gray.cgColor
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.gray.cgColor
        usernameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        guard let username = usernameTextField.text, !username.isEmpty else {
            showAlert(message: "Please enter a username")
            return
        }
        guard let password = passwordTextField.text, !password.isEmpty else {
            showAlert(message: "Please enter a password")
            return
        }
        //usernameTextField.text = ""
        passwordTextField.text = ""
        if let index = usernames.firstIndex(of: username) {
            if passwords[index] == password {
                // navigateToUserDetails(username: username, phone: phones[index])
                let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SuccessfulSignInViewController") as? SuccessfulSignInViewController
                
                secondVC?.email = usernameTextField.text!
                self.navigationController?.pushViewController(secondVC!, animated: false)
            } else {
                showAlert(message: "Invalid username or password")
            }
        } else {
            showAlert(message: "Invalid username or password")
        }
    }
    
    @IBAction func ForgotPassword(_ sender: Any) {
        
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as? ForgotPasswordViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: true)
    }
    @IBAction func SignUpButton(_ sender: Any) {
        
        
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "ConnectToBankViewController") as? ConnectToBankViewController
        
        self.navigationController?.pushViewController(forgotPassword!, animated: true)
    }
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}



