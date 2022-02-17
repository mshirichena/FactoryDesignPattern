//
//  Protocols.swift
//  FactoryDesignPattern
//
//  Created by Christian Shirichena on 2/16/22.
//

import UIKit


protocol Reusable: AnyObject {
    static var reuseIdentifier: String { get }
}


extension Reusable {
    static var reuseIdentifier: String {
        // I like to use the class's name as an identifier
        return String(describing: self)
    }
}

// Mark: Factory protocol
protocol TextCellFactory {
    func createCell(for message: Message, dequeueingTableView tableView: UITableView) -> UITableViewCell
}

extension UITableViewCell: Reusable {}
