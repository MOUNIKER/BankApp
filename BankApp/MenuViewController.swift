//
//  MenuViewController.swift
//  BankApp
//
//  Created by Siva Mouniker  on 31/05/23.
//

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
                        //present(secondVC, animated: true)
                        self.navigationController?.pushViewController(forgotPassword!, animated: true)
        
    }
    
    
    
    
    @IBAction func AddCard(_ sender: UIButton) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "AddCard") as? AddCard
                        //present(secondVC, animated: true)
                        self.navigationController?.pushViewController(forgotPassword!, animated: true)
        
        
    }
    
    
    @IBAction func TransferMoney(_ sender: UIButton) {
        
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "TransactionViewController") as? TransactionViewController
                        //present(secondVC, animated: true)
                        self.navigationController?.pushViewController(forgotPassword!, animated: true)
        
        
        
    }
    
    
    
    
    
    
    

}
