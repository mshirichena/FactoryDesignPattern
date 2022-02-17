//
//  ViewController.swift
//  FactoryDesignPattern
//
//  Created by Christian Shirichena on 2/14/22.
//

import UIKit

class MessageViewController: UITableViewController {
    
    let information = [Message(name: "First", message: "This is the first cell", image: nil)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpUI()
    }
    
    func setUpUI() {
        tableView.register(TextChat.self, forCellReuseIdentifier: TextChat.reuseIdentifier)
        tableView.register(ImageTableViewCell.self, forCellReuseIdentifier: ImageTableViewCell.reuseIdentifier)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            
            let cell = TextChatCellFactory().createCell(for: information[indexPath.row], dequeueingTableView: tableView)
            
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.reuseIdentifier) as? ImageTableViewCell else { return UITableViewCell() }
            cell.imageView?.image = UIImage(named: "roys-peak")
            
            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

