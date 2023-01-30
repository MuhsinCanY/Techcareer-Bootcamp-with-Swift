//
//  CollectionViewCellMutfak.swift
//  Techcareer.net_Odev_6
//
//  Created by Muhsin Can Yılmaz on 29.01.2023.
//

import UIKit

final class CollectionViewCellMutfak: UICollectionViewCell {
    
    @IBOutlet weak var mutfakImageView: UIImageView!
    @IBOutlet weak var mutfakLabel: UILabel!
}

class Mutfak{

    let imageName: String
    let labelText: String
    
    init(imageName: String, labelText: String) {
        self.imageName = imageName
        self.labelText = labelText
    }
}
