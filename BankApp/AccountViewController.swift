

import UIKit

class AccountViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var accountNumber: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = CustomerDetails.shared.name
        accountNumber.text = CustomerDetails.shared.bank
        emailLabel.text = CustomerDetails.shared.email
        
    }
    
    
    @IBAction func Menu(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: false)
    }
    
    @IBAction func Backbtnn(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: false)
    }
}
