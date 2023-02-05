//
//  HomePresenter.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 5.02.2023.
//

import Foundation

final class HomePresenter: HomeViewToPresenter{

    var interactor: HomePresenterToInteractor?
    
    var view: HomePresenterToView?
    
    func sendData() {
        interactor?.sendData()
    }
    
    func searchData(with name: String) {
        interactor?.searchData(with: name)
    }
    
    func deleteData(id: Int) {
        interactor?.deleteData(id: id)
    }
 
}

extension HomePresenter: HomeInteractorToPresenter{
    func transportData(list: [ToDo]) {
        view?.transportData(list: list)
    }
}
