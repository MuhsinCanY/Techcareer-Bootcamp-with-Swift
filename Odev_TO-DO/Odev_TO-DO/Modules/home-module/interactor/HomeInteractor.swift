//
//  HomeInteractor.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 5.02.2023.
//

import Foundation

final class HomeInteractor: HomePresenterToInteractor{
    
    var presenter: HomeInteractorToPresenter?
    
    func sendData() {
        let list = Tododao().passAllData()
        presenter?.transportData(list: list.reversed())
    }
    
    func searchData(with name: String) {
        let list = Tododao().searchData(with: name)
        presenter?.transportData(list: list)
    }
    
    func deleteData(id: Int) {
        Tododao().deleteData(id: "\(id)")
    }
    
}
