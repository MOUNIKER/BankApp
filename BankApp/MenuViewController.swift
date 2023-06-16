

import UIKit

class MenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Homebtnn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func Account(_ sender: UIButton) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "AccountViewController") as? AccountViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: true)
    }
    
    @IBAction func AddCard(_ sender: UIButton) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "AddCard") as? AddCard
        self.navigationController?.pushViewController(forgotPassword!, animated: true)
    }
    
    @IBAction func TransferMoney(_ sender: UIButton) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "TransactionViewController") as? TransactionViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: true)
    }
    
    @IBAction func CompletedTransactions(_ sender: UIButton) {
//        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "CompletedTransactionsViewController") as? CompletedTransactionsViewController
//        self.navigationController?.pushViewController(forgotPassword!, animated: true)
        
                let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MounikerTestViewController") as? MounikerTestViewController
                                //present(secondVC, animated: true)
                                self.navigationController?.pushViewController(forgotPassword!, animated: true)
        
    }
    
    @IBAction func Exchange(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "ExchangeViewController") as? ExchangeViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: true)
    }
    
    @IBAction func Payment(_ sender: UIButton) {
        let payment = self.storyboard?.instantiateViewController(withIdentifier: "PaymentViewController") as? PaymentViewController
        self.navigationController?.pushViewController(payment!, animated: true)
    }
    
    
    @IBAction func QRCode(_ sender: UIButton) {
        let QRcode = self.storyboard?.instantiateViewController(withIdentifier: "QRCodeViewController") as? QRCodeViewController
        self.navigationController?.pushViewController(QRcode!, animated: true)
    }
    
    @IBAction func Backbtnn(_ sender: Any) {
        let QRcode = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(QRcode!, animated: true)
    }
    
    @IBAction func logOut(_ sender: UIButton) {
        let logOut = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        self.navigationController?.pushViewController(logOut!, animated: true)
    }
    
}
