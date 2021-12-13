//
//  Label + Extension.swift
//  MyChat
//
//  Created by Oleg Kanatov on 13.12.21.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
}
