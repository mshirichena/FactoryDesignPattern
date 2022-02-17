//
//  TextChat.swift
//  FactoryDesignPattern
//
//  Created by Christian Shirichena on 2/15/22.
//

import UIKit
// Generics
class TextChat: GenericTextTableViewCell<UILabel> {

    override var name: String? {
        didSet {
            nameLabel.text = name
        }
    }
    
    override var message: String? {
        didSet {
            messageText.attributedText = NSAttributedString(string: message ?? "")
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
