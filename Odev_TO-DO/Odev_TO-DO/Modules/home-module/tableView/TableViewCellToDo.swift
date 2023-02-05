//
//  TableViewCellToDo.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 3.02.2023.
//

import UIKit

class TableViewCellToDo: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor(red: 0, green: 0, blue: 200, alpha: 0.2)
        selectedBackgroundView = bgColorView
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
