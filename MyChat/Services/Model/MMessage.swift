//
//  MMessage.swift
//  MyChat
//
//  Created by Oleg Kanatov on 22.12.21.
//

import UIKit

struct MMessage: Hashable {
    
    let content: String
    let senderId: String
    let senderUsername: String
    var sentDate: Date
    let id: String?
    
    init(user: MUser, content: String) {
        self.content = content
        senderId = user.id
        senderUsername = user.username
        sentDate = Date()
        id = nil
    }
    
    var representation: [String: Any] {
        let rep: [String: Any] = [
            "content": content,
            "senderId": senderId,
            "senderName": senderUsername,
            "created": sentDate,
        ]
        return rep
    }
}
