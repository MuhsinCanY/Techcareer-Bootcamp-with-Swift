//
//  AddInteractor.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 4.02.2023.
//

import Foundation

final class AddInteractor: AddPresenterToInteractor{
    func insertData(name: String) {
        Tododao().insertData(name: name)
    }
}
