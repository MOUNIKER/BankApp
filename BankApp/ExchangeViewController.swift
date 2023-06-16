

import UIKit

class ExchangeViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var dollarTextField: UITextField!
    @IBOutlet weak var euroTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dollarTextField.becomeFirstResponder()
        dollarTextField.delegate = self
        dollarTextField.layer.cornerRadius = 10
        euroTextField.layer.cornerRadius = 10
        dollarTextField.becomeFirstResponder()
        dollarTextField.addTarget(self, action: #selector(dollarTextFieldDidChange), for: .editingChanged)
    }
    
    @IBAction func Menu(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: true)
    }
    
    @IBAction func back(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: false)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == dollarTextField {
            textField.keyboardType = .decimalPad
        }
    }
    
    @objc func dollarTextFieldDidChange(_ textField: UITextField) {
        if let dollarValue = Double(textField.text ?? "") {
            let euroValue = dollarValue * 0.89
            euroTextField.text = String(format: "%.2f", euroValue)
        } else {
            euroTextField.text = ""
        }
    }
    
}


//extension ExchangeViewController: UITextFieldDelegate {
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }
//}





