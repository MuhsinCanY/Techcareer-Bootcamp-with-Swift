//
//  AddPresenter.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 4.02.2023.
//

import Foundation

final class AddPresenter: AddViewToPresenter{
    var interactor: AddPresenterToInteractor?
    
    func insertData(name: String) {
        interactor?.insertData(name: name)
    }
    
    
}
