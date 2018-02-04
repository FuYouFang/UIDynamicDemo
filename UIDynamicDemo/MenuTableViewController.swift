//
//  MenuTableViewController.swift
//  UIDynamicDemo
//
//  Created by fuyoufang on 04/02/2018.
//  Copyright © 2018 fuyoufang. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    let cellReuseIdentifier = "cell"
    var dynamicItems: [DynamicType] = [.Gravity, .Collision]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "仿真行为"
    }
}

extension MenuTableViewController {
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dynamicItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)
        if cell == nil {
            cell = UITableViewCell(style: .value1, reuseIdentifier:cellReuseIdentifier)
        }
        let type = dynamicItems[indexPath.row]
        cell?.textLabel?.text = type.text()
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DynamicViewController(type:  dynamicItems[indexPath.row])
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
