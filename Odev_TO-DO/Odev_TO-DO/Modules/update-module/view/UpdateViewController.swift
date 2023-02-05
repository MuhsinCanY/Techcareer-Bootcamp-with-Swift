//
//  UpdateViewController.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 4.02.2023.
//

import UIKit

final class UpdateViewController: UIViewController {
    
    var presenter: UpdateViewToPresenter?

    @IBOutlet weak var oldGoalLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    var toDo: ToDo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateRouter.createModule(ref: self)
        oldGoalLabel.text = toDo?.name!
        textField.text = toDo?.name!
        textField.becomeFirstResponder()
    }
    
    @IBAction func updateButtonTapped(_ sender: Any) {
        if let text = textField.text{
            presenter?.updateData(id: toDo!.id!, name: text)
        }
        navigationController?.popViewController(animated: true)
    }
    
}
