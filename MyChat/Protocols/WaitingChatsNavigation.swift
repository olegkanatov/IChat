//
//  WaitingChatsNavigation.swift
//  MyChat
//
//  Created by Oleg Kanatov on 23.12.21.
//

import Foundation

protocol WaitingChatsNavigation: class {
    func removeWaitingChat(chat: MChat)
    func chatToActive(chat: MChat)
}
