//
//  HomeRouter.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 5.02.2023.
//

import Foundation

final class HomeRouter: HomePresenterToRouter{
    
    static func createModule(ref: HomeViewController) {
        
        let presenter = HomePresenter()
        
        ref.presenter = presenter
        
        ref.presenter?.interactor = HomeInteractor()
        ref.presenter?.view = ref
        
        ref.presenter?.interactor?.presenter = presenter
        
    }
    
    
}
