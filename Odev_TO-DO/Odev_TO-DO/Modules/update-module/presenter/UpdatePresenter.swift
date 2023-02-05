//
//  UpdatePresenter.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 4.02.2023.
//

import Foundation

final class UpdatePresenter: UpdateViewToPresenter{
    var interactor: UpdatePresenterToInteractor?
    
    func updateData(id: Int, name: String) {
        interactor?.updateData(id: id, name: name)
    }
    
    
}
