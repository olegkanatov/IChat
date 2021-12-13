//
//  SelfConfiguringCell.swift
//  MyChat
//
//  Created by Oleg Kanatov on 13.12.21.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure<U: Hashable>(with value: U)
}
