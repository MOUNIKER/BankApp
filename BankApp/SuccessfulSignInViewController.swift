//
//  SuccessfulSignInViewController.swift
//  BankApp
//
//  Created by Siva Mouniker  on 31/05/23.
//

import UIKit

class SuccessfulSignInViewController: UIViewController {

    
    @IBOutlet weak var namTextField: UILabel!
    
    @IBOutlet weak var balance: UILabel!
    
    var email = ""
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namTextField.text = " Hello \(email)!"
        balance.text = "$ \(CustomerDetails.shared.amount)"
       

    }
    
    
    
    @IBAction func menuButton(_ sender: UIButton) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
                        //present(secondVC, animated: true)
                        self.navigationController?.pushViewController(forgotPassword!, animated: false)
        
        
    }
    
   

}
