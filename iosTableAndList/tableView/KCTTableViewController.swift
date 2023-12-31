//
//  TableViewController.swift
//  iosTableAndList
//
//  Created by Krishan Chand Tiwari on 25/08/23.
//

import UIKit

class KCTTableViewController: UITableViewController {
    let names = ["Alice", "Bob", "Charlie", "David", "Emily", "Frank", "Grace", "Henry", "Isabel", "Jack"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "KCTTableViewCell", bundle: nil), forCellReuseIdentifier: "KCTTableViewCell")
        }

    // MARK: - Table view data source
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "KCTTableViewCell", for: indexPath) as! KCTTableViewCell
        cell.nameText.text = names[indexPath.row]
        return cell
    }
}
