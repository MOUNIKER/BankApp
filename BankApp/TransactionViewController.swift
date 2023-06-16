

import UIKit

class TransactionViewController: UIViewController {
    
    @IBOutlet weak var fromBank: UILabel!
    @IBOutlet weak var toBank: UITextField!
    @IBOutlet weak var amount: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toBank.becomeFirstResponder()
        toBank.delegate = self
        fromBank.text = CustomerDetails.shared.bank
        amount.text = String(CustomerDetails.shared.amount)
    }
    
    @IBAction func Menu(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: false)
    }
    
    @IBAction func Backbtnn(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: false)
    }
    
    @IBAction func linkCard(_ sender: Any) {
        guard let tobank = toBank.text, !tobank.isEmpty else {
            showAlert(message: "Please enter bank account number to send money")
            return
        }
        showAlert(message: "Money Sent Successfully")
        toBank.text = ""
        fromBank.text = ""
        amount.text = ""
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Status", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
extension TransactionViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
