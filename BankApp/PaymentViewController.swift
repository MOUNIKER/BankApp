

import UIKit

class PaymentViewController: UIViewController {
    
    @IBOutlet weak var balanceLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        balanceLabel.text = String(CustomerDetails.shared.amount)
    }
    
    @IBAction func Menu(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: true)
    }
    
    @IBAction func Backbtnn(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: false)
    }
}
