//
//  ViewController.swift
//  BankApp
//
//  Created by Siva Mouniker  on 31/05/23.
//

import UIKit
var usernames: [String] = ["mou"]
var passwords: [String] = ["123"]

var userData:[[String:Any]] = [["name":"a"],["name":"b"]]


class ViewController: UIViewController {

    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 7
        // Do any additional setup after loading the view.
        
       // var filteredArr = userData.filter({$0["name"] as! String == CustomerDetails.shared.name})
        //print(filteredArr[0]["name"])
    }
    
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        //CustomerDetails.shared.name = usernameTextField.text ?? ""
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
        
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "SuccessfulSignInViewController") as? SuccessfulSignInViewController
                        //present(secondVC, animated: true)
        forgotPassword!.email = usernameTextField.text!
                        self.navigationController?.pushViewController(forgotPassword!, animated: false)
        
        
        
        
        
    }
    
    @IBAction func ForgotPassword(_ sender: Any) {
        
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as? ForgotPasswordViewController
                        //present(secondVC, animated: true)
                        self.navigationController?.pushViewController(forgotPassword!, animated: false)
        
        
        
    }
    
    
    
    
    
    
    @IBAction func SignUpButton(_ sender: Any) {
        
        
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "ConnectToBankViewController") as? ConnectToBankViewController
                        //present(secondVC, animated: true)
                        self.navigationController?.pushViewController(forgotPassword!, animated: false)
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func showAlert(message: String) {
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        
        
        }


}




