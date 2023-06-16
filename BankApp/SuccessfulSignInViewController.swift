

import UIKit

class SuccessfulSignInViewController: UIViewController {
    
    @IBOutlet weak var namTextField: UILabel!
    @IBOutlet weak var balance: UILabel!
    
    var email = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        namTextField.becomeFirstResponder()
        namTextField.text = " Hello \(email)!"
        balance.text = "$ \(CustomerDetails.shared.amount)"
    }
    
    @IBAction func menuButton(_ sender: UIButton) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: false)
    }
}
