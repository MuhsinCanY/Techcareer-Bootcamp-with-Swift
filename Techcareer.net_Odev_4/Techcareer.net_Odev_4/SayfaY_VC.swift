//
//  SayfaY_VC.swift
//  Techcareer.net_Odev_4
//
//  Created by Muhsin Can Yılmaz on 15.01.2023.
//

import UIKit

class SayfaY_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func anasayfayaDonButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
