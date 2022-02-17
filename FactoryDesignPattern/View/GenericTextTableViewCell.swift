//
//  TextTableViewCell.swift
//  FactoryDesignPattern
//
//  Created by Christian Shirichena on 2/15/22.
//

import UIKit

class GenericTextTableViewCell<TextView: UIView>: UITableViewCell {
    
    var textView = TextView()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        return label
    }()
    
    var name: String? {
        didSet {
            nameLabel.text = name
        }
    }
    
    let messageText: UITextView = {
        let textView = UITextView()
        textView.font = UIFont.systemFont(ofSize: 14, weight: .heavy)
        return textView
    }()
    
    var message: String? {
        didSet {
            messageText.text = name
        }
    }
    
    let messageView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .quaternarySystemFill
        view.layer.cornerRadius = 20
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        nameLabel.backgroundColor = UIColor.secondarySystemBackground
        messageText.backgroundColor = UIColor.lightGray
        self.contentView.addSubview(messageView)
        messageView.addSubview(nameLabel)
        messageView.addSubview(messageText)
        messageView.translatesAutoresizingMaskIntoConstraints = false
        addConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.frame = CGRect(x: 20, y: 10, width: 70, height: 30)
        messageText.frame = CGRect(x: 20, y: 40, width: 300, height: 30)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            messageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            messageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),messageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10),
            messageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -14),
            
            nameLabel.topAnchor.constraint(equalTo: messageView.topAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: messageView.leadingAnchor, constant: 14),
            
            messageText.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            messageText.leadingAnchor.constraint(equalTo: messageView.leadingAnchor, constant: 8),
            messageText.trailingAnchor.constraint(equalTo: messageView.trailingAnchor, constant: 10),
            messageText.bottomAnchor.constraint(equalTo: messageView.bottomAnchor, constant: -8),
        ])
    }
    
}
