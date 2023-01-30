//
//  ViewController.swift
//  Techcareer.net_Odev_6
//
//  Created by Muhsin Can Yılmaz on 26.01.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var collectionViewMutfak: UICollectionView!
    @IBOutlet weak var collectionViewKampanya: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var logoImageView: UIImageView!
    
    private let kampanyaList = [Kampanya(imageName: "kampanya-2"),
                        Kampanya(imageName: "kampanya-3"),
                        Kampanya(imageName: "kampanya-1"),
                        Kampanya(imageName: "kampanya-2"),
                        Kampanya(imageName: "kampanya-3"),
                        Kampanya(imageName: "kampanya-1")
    ]
    
    private let mutfakList = [Mutfak(imageName: "balik", labelText: "Balık"),
                      Mutfak(imageName: "burger", labelText: "Burger"),
                      Mutfak(imageName: "cig-kofte", labelText: "Çiğ Köfte"),
                      Mutfak(imageName: "dunya-mutfagi", labelText: "Dünya Mutfağı"),
                      Mutfak(imageName: "kebap", labelText: "Kebap"),
                      Mutfak(imageName: "ev-yemekleri", labelText: "Ev Yemekleri"),
                      Mutfak(imageName: "kokorec", labelText: "Kokoreç"),
                      Mutfak(imageName: "balik", labelText: "Balık"),
                      Mutfak(imageName: "burger", labelText: "Burger"),
                      Mutfak(imageName: "cig-kofte", labelText: "Çiğ Köfte"),
                      Mutfak(imageName: "dunya-mutfagi", labelText: "Dünya Mutfağı"),
                      Mutfak(imageName: "ev-yemekleri", labelText: "Ev Yemekleri"),
                      Mutfak(imageName: "kebap", labelText: "Kebap"),
                      Mutfak(imageName: "kokorec", labelText: "Kokoreç")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionViews()
        setUpSearchBar()
        logoImageView.image = logoImageView.image?.withTintColor(.white)
    }
    
    fileprivate func setUpCollectionViews() {
        
        collectionViewKampanya.delegate = self
        collectionViewKampanya.dataSource = self
        
        collectionViewMutfak.delegate = self
        collectionViewMutfak.dataSource = self
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize(width: 159, height: 194)
        collectionViewKampanya.collectionViewLayout = layout
        collectionViewKampanya.showsHorizontalScrollIndicator = false
        
        let layoutMutfak = UICollectionViewFlowLayout()
        layoutMutfak.scrollDirection = .horizontal
        layoutMutfak.minimumInteritemSpacing = 0
        layoutMutfak.minimumLineSpacing = 0
        layoutMutfak.itemSize = CGSize(width: 115.5, height: 125)
        collectionViewMutfak.collectionViewLayout = layoutMutfak
        collectionViewMutfak.showsHorizontalScrollIndicator = false
    }
    
    fileprivate func setUpSearchBar() {
        searchBar.barTintColor = UIColor(named: "mainColor")
        searchBar.backgroundImage = UIImage()
        
        searchBar.searchTextField.layer.cornerRadius = 15
        searchBar.searchTextField.layer.masksToBounds = true
        
        let imageV = UIImageView()
        imageV.image = UIImage(named: "search")
        imageV.translatesAutoresizingMaskIntoConstraints = false
        imageV.widthAnchor.constraint(equalToConstant: 25).isActive = true
        imageV.heightAnchor.constraint(equalToConstant: 25).isActive = true
        //imageV.tintColor = .blue
        
        searchBar.searchTextField.leftView = imageV
        
        if let textField = searchBar.value(forKey: "searchField") as? UITextField {
            textField.backgroundColor = .white
        }
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewMutfak{
            return mutfakList.count
        }
        return kampanyaList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionViewMutfak{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mutfakCell", for: indexPath) as! CollectionViewCellMutfak
            let mutfak = mutfakList[indexPath.item]
            cell.mutfakImageView.image = UIImage(named: mutfak.imageName)
            cell.mutfakLabel.text = mutfak.labelText
            return cell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "kampanyaCell", for: indexPath) as! CollectionViewCellKampanya
        let imageName = kampanyaList[indexPath.item].imageName
        cell.kampanyaImageView.image = UIImage(named: imageName)
        return cell
    }
}


