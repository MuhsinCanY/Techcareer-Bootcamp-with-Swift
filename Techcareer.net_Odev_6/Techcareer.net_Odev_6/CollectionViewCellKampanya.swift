//
//  CollectionViewCellKampanya.swift
//  Techcareer.net_Odev_6
//
//  Created by Muhsin Can Yılmaz on 29.01.2023.
//

import UIKit

final class CollectionViewCellKampanya: UICollectionViewCell {
    
    @IBOutlet weak var kampanyaImageView: UIImageView!
}

class Kampanya{
    
    var imageName: String
    
    init(imageName: String) {
        self.imageName = imageName
    }
}


