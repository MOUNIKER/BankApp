

import UIKit
import SwiftQRCode
import CoreImage

class QRCodeViewController: UIViewController {
    
    @IBOutlet weak var barcodeView: UIView!
    @IBOutlet weak var barcodeImageView: UIImageView!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var emailId: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateBarcode()
        Name.text = CustomerDetails.shared.name
        emailId.text = CustomerDetails.shared.email
        if let qrCodeImage = generateQRCode(from: CustomerDetails.shared.name) {
            let imageView = UIImageView(image: qrCodeImage)
            imageView.frame = CGRect(x: 100, y: 235, width: 200, height: 200)
            view.addSubview(imageView)
        }
    }
    
    func generateQRCode(from string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)
        
        guard let filter = CIFilter(name: "CIQRCodeGenerator") else {
            return nil
        }
        
        filter.setValue(data, forKey: "inputMessage")
        filter.setValue("H", forKey: "inputCorrectionLevel")
        
        guard let qrCodeImage = filter.outputImage else {
            return nil
        }
        
        let scaleX = 250 / qrCodeImage.extent.size.width
        let scaleY = 250 / qrCodeImage.extent.size.height
        let transformedImage = qrCodeImage.transformed(by: CGAffineTransform(scaleX: scaleX, y: scaleY))
        
        return UIImage(ciImage: transformedImage)
    }
    
    @IBAction func Menu(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: false)
    }
    @IBAction func Back(_ sender: Any) {
        let forgotPassword = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        self.navigationController?.pushViewController(forgotPassword!, animated: false)
    }
    
    func generateBarcode() {
        let data = String(CustomerDetails.shared.name)
        
        if let filter = CIFilter(name: "CICode128BarcodeGenerator") {
            let data = data.data(using: .ascii)
            filter.setValue(data, forKey: "inputMessage")
            
            if let outputImage = filter.outputImage {
                let transform = CGAffineTransform(scaleX: 10, y: 10)
                
                let scaledImage = outputImage.transformed(by: transform)
                let barcodeImage = UIImage(ciImage: scaledImage)
                
                barcodeImageView.contentMode = .scaleAspectFit
                barcodeImageView.image = barcodeImage
            }
        }
    }
    
    @IBAction func bankAcccount(_ sender: UIButton) {
        let transcationVC = self.storyboard?.instantiateViewController(withIdentifier: "TransactionViewController") as? TransactionViewController
        self.navigationController?.pushViewController(transcationVC!, animated: true)
    }
}
