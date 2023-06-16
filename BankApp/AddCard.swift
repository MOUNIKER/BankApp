

import UIKit

class AddCard: UIViewController {
    
    @IBOutlet weak var nameTextFeild: UITextField!
    @IBOutlet weak var cardNumberTextFeild: UITextField!
    @IBOutlet weak var monthTextFeild: UITextField!
    @IBOutlet weak var yearTextFeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextFeild.becomeFirstResponder()
        nameTextFeild.delegate = self
        cardNumberTextFeild.delegate = self
        monthTextFeild.delegate = self
        yearTextFeild.delegate = self
    }
    
    @IBAction func Linkcard(_ sender: UIButton) {
        
        guard let username = nameTextFeild.text, !username.isEmpty else {
            showAlert(message: "Please enter your name")
            return
        }
        guard let cardNumber = cardNumberTextFeild.text, !cardNumber.isEmpty else {
            showAlert(message: "Please enter your card number")
            return
        }
        guard let month = monthTextFeild.text, !month.isEmpty else {
            showAlert(message: "Please enter month ")
            return
        }
        guard let year = yearTextFeild.text, !year.isEmpty else {
            showAlert(message: "Please enter year ")
            return
        }
        CardDetails.shared.name = nameTextFeild.text ?? ""
        CardDetails.shared.cardNumber = cardNumberTextFeild.text ?? ""
        CardDetails.shared.month = monthTextFeild.text ?? ""
        CardDetails.shared.year = yearTextFeild.text ?? ""
        
        nameTextFeild.text = ""
        cardNumberTextFeild.text = ""
        monthTextFeild.text = ""
        yearTextFeild.text = ""
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func Backbtnn(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: true)
    }
    
    @IBAction func Menubtnn(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: false)
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Status", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}

class CardDetails {
    static let shared = CardDetails()
    var name = ""
    var cardNumber = ""
    var month = ""
    var year = ""
    var password = ""
    
}

extension AddCard: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
