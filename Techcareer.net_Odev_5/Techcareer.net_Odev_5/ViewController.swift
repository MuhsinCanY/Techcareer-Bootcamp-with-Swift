//
//  ViewController.swift
//  Techcareer.net_Odev_5
//
//  Created by Muhsin Can Yılmaz on 17.01.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    private var sayi1 = 0
    @IBOutlet weak var labelSonuc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonCevir(_ sender: Any) {
        if let sayi = Int(labelSonuc.text!){
            labelSonuc.text = "\(-sayi)"
        }
    }
    
    @IBAction func buttonSifirla(_ sender: Any) {
        sayi1 = 0
        labelSonuc.text = "0"
    }
    
    @IBAction func buttonEqual(_ sender: Any) {
        if let sayi2 = Int(labelSonuc.text!){
            let sonuc = sayi1 + sayi2
            labelSonuc.text = "\(sonuc)"
        }
        self.sayi1 = 0
    }
    
    @IBAction func buttonPlus(_ sender: Any) {
        if let sayi1 = Int(labelSonuc.text!){
            self.sayi1 += sayi1
        }
        labelSonuc.text = ""
    }
    
    @IBAction func tusButton(_ sender: UIButton) {
        for i in 0...9{
            if sender.tag == i{
                if labelSonuc.text == "0"{
                    labelSonuc.text = ""
                }
                labelSonuc.text! += "\(sender.tag)"
            }
        }
    }
    
    @IBAction func comingSoon(_ sender: Any) {
        let alert = UIAlertController(title: "Coming Soon", message: "These features may be added in the future.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}

