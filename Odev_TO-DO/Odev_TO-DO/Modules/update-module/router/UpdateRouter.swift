//
//  UpdateRouter.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 4.02.2023.
//

import Foundation

final class UpdateRouter: UpdatePresenterToRouter{
    
    
    static func createModule(ref: UpdateViewController) {
        ref.presenter = UpdatePresenter()
        ref.presenter?.interactor = UpdateInteractor()
    }
    
    
}

