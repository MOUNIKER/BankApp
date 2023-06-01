//
//  TransactionViewController.swift
//  BankApp
//
//  Created by Siva Mouniker  on 01/06/23.
//

import UIKit

class TransactionViewController: UIViewController {

    

    @IBOutlet weak var fromBank: UILabel!
    @IBOutlet weak var toBank: UITextField!
    @IBOutlet weak var amount: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fromBank.text = CustomerDetails.shared.bank
        amount.text = String(CustomerDetails.shared.amount)
        //CustomerDetails.shared.amount = (CustomerDetails.shared.amount - Int(amount.text))
        // Do any additional setup after loading the view.
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
