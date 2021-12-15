//
//  UserError.swift
//  MyChat
//
//  Created by Oleg Kanatov on 15.12.21.
//

import Foundation

enum UserError {
    case notFilled
    case photoNotExist
    case cannotGetUserInfo
    case cannotUnwrapToMUser
}

extension UserError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Fill in all the fields.", comment: "")
        case .photoNotExist:
            return NSLocalizedString("User has not selected a photo.", comment: "")
        case .cannotGetUserInfo:
            return NSLocalizedString("Unable to load User information from Firebase.", comment: "")
        case .cannotUnwrapToMUser:
            return NSLocalizedString("Unable to convert MUser from User.", comment: "")
        }
    }
}
