//
//  AuthNavigationDelegate.swift
//  MyChat
//
//  Created by Oleg Kanatov on 14.12.21.
//

import Foundation

protocol AuthNavigationDelegate: AnyObject {
    func toLoginVC()
    func toSignUpVC()
}
