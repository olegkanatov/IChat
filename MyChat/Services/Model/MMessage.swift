//
//  MMessage.swift
//  MyChat
//
//  Created by Oleg Kanatov on 22.12.21.
//

import UIKit
import FirebaseFirestore

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
    
    init?(document: QueryDocumentSnapshot) {
        let data = document.data()
        guard let sentDate = data["created"] as? Timestamp else { return nil }
        guard let senderId = data["senderId"] as? String else { return nil }
        guard let senderName = data["senderName"] as? String else { return nil }
        guard let content = data["content"] as? String else { return nil }
        
        self.sentDate = sentDate.dateValue()
        self.senderId = senderId
        self.senderUsername = senderName
        self.content = content
        self.id = document.documentID
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
