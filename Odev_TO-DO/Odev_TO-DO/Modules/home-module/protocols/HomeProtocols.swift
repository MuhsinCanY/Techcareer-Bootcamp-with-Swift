//
//  HomeProtocols.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 5.02.2023.
//

import Foundation

protocol HomeViewToPresenter{
    var interactor: HomePresenterToInteractor? { get set }
    var view: HomePresenterToView? { get set }
    
    func sendData()
    func searchData(with name: String)
    func deleteData(id: Int)
}

protocol HomePresenterToInteractor{
    var presenter: HomeInteractorToPresenter? { get set }
    
    func sendData()
    func searchData(with name: String)
    func deleteData(id: Int)
}

protocol HomeInteractorToPresenter{
    func transportData(list: [ToDo])
}

protocol HomePresenterToView{
    func transportData(list: [ToDo])
}

protocol HomePresenterToRouter{
    static func createModule(ref: HomeViewController)
}
