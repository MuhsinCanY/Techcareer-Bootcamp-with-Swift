//
//  SayfaB_VC.swift
//  Techcareer.net_Odev_4
//
//  Created by Muhsin Can Yılmaz on 15.01.2023.
//

import UIKit

class SayfaB_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func gitY_Button(_ sender: Any) {
        performSegue(withIdentifier: "toSayfaY", sender: nil)
    }
}
