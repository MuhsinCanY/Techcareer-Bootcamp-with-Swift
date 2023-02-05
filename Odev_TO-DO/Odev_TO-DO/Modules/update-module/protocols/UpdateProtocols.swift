//
//  UpdateProtocols.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 4.02.2023.
//

import Foundation

protocol UpdateViewToPresenter{
    var interactor: UpdatePresenterToInteractor? { get set }
    
    func updateData(id: Int, name: String)
}

protocol UpdatePresenterToInteractor{
    func updateData(id: Int, name: String)
}

protocol UpdatePresenterToRouter{
    static func createModule(ref: UpdateViewController)
}
