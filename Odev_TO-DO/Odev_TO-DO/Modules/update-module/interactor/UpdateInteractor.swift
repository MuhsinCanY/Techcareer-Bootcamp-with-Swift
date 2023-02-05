//
//  UpdateInteractor.swift
//  Odev_TO-DO
//
//  Created by Muhsin Can Yılmaz on 4.02.2023.
//

import Foundation

final class UpdateInteractor: UpdatePresenterToInteractor{
    func updateData(id: Int, name: String) {
        Tododao().updateData(id: id, name: name)
    }
}
