//
//  Anasayfa.swift
//  Techcareer.net_Odev_4
//
//  Created by Muhsin Can Yılmaz on 15.01.2023.
//

import UIKit

class Anasayfa: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func gitA_Button(_ sender: Any) {
        performSegue(withIdentifier: "toSayfaA", sender: nil)
    }
    @IBAction func gitX_Button(_ sender: Any) {
        performSegue(withIdentifier: "toSayfaX", sender: nil)
    }
}

