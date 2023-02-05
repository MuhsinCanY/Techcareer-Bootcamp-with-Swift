//
//  AddRouter.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 4.02.2023.
//

import Foundation

final class AddRouter: AddPresenterToRouter{
    static func createModule(ref: AddViewController) {
        ref.presenter = AddPresenter()
        ref.presenter?.interactor = AddInteractor()
    }
}
