//
//  AddProtocols.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 4.02.2023.
//

import Foundation

protocol AddViewToPresenter{
    var interactor: AddPresenterToInteractor? {get set}
    
    func insertData(name: String)
}

protocol AddPresenterToInteractor{
    func insertData(name: String)
}

protocol AddPresenterToRouter{
    static func createModule(ref: AddViewController)
}

