

import UIKit


class ConnectToBankViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var bankAccountTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.becomeFirstResponder()
        nameTextField.delegate = self
        bankAccountTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    @IBAction func Cancel(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: false)
    }
    
    @IBAction func Signup(_ sender: Any) {
        
        guard let name = nameTextField.text, !name.isEmpty else {
            showAlert(message: "Please enter your name")
            return
        }
        
        guard let email = emailTextField.text, !email.isEmpty else {
            showAlert(message: "Please enter your email")
            return
        }
        
        guard let password = passwordTextField.text, !password.isEmpty else {
            showAlert(message: "Please enter a password")
            return
        }
        
        guard let bank = bankAccountTextField.text, !bank.isEmpty else {
            showAlert(message: "Please enter your BankAccount")
            return
        }
        
        CustomerDetails.shared.name = nameTextField.text ?? ""
        CustomerDetails.shared.bank = bankAccountTextField.text ?? ""
        CustomerDetails.shared.email = emailTextField.text ?? ""
        usernames.append(email)
        passwords.append(password)
        
        showAlert(message: "Sign up successful")
        
        nameTextField.text = ""
        emailTextField.text = ""
        passwordTextField.text = ""
        bankAccountTextField.text = ""
    }
    @IBAction func LogIn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Status", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
class CustomerDetails {
    static let shared = CustomerDetails()
    var name = ""
    var bank = ""
    var email = ""
    var amount : Int = 4000
}

extension ConnectToBankViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
