

import UIKit

class CompletedTransactionsViewController: UIViewController {
    var namesArray:[String]?
    var statusArray:[String]?
    @IBOutlet weak var sampleTableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableview()
        namesArray = ["Lorem Ipsum ","Auctor Elit Ltd","lectus Sit est","Congue Quise", "Auctor Elit Ltd","lectus Sit est"]
        statusArray = ["$2,030.80","-$450.00","-$239.00 ","-$1500.00","-$450","-$239"]
    }
    
    @IBAction func Menu(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: false)
        
    }
    
    @IBAction func Backbtnn(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: false)
    }
    
    func setUpTableview() {
        sampleTableview.delegate = self
        sampleTableview.dataSource = self
        sampleTableview.register(UINib(nibName: "SampleTableViewCell", bundle: nil), forCellReuseIdentifier: "SampleTableViewCell")
    }
}



extension CompletedTransactionsViewController: UITableViewDelegate, UITableViewDataSource{
    //    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    //        let headerView = UIView()
    //        headerView.backgroundColor = .red
    //        return headerView
    //    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        namesArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SampleTableViewCell", for: indexPath) as? SampleTableViewCell {
            cell.nameLabel.text = namesArray?[indexPath.row]
            cell.statusLabel.text = statusArray?[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    //    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    //        return "TRANSACTIONS"
    //    }
}
