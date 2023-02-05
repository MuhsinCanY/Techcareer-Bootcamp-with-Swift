//
//  AddViewController.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 4.02.2023.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var presenter: AddViewToPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AddRouter.createModule(ref: self)
        textField.becomeFirstResponder()
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        if let name = textField.text{
            presenter?.insertData(name: name)
        }
        navigationController?.popViewController(animated: true)
    }
    
}
