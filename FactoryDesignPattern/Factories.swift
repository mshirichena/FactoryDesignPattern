//
//  Factories.swift
//  FactoryDesignPattern
//
//  Created by Christian Shirichena on 2/17/22.
//

import UIKit

extension MessageViewController {
    
    class TextChatCellFactory: TextCellFactory {
        func createCell(for message: Message, dequeueingTableView tableView: UITableView) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: TextChat.reuseIdentifier) as! TextChat
            cell.name = message.name
            cell.message = message.message
            return cell
        }
    }
}
