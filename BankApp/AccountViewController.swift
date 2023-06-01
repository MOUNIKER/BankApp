//
//  AccountViewController.swift
//  BankApp
//
//  Created by Siva Mouniker  on 31/05/23.
//

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
    
   
  
    
    

}
