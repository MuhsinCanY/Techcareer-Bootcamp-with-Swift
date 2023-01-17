//
//  SayfaA_VC.swift
//  Techcareer.net_Odev_4
//
//  Created by Muhsin Can Yılmaz on 15.01.2023.
//

import UIKit

class SayfaA_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func gitB_Button(_ sender: Any) {
        performSegue(withIdentifier: "toSayfaB", sender: nil)
    }
}
