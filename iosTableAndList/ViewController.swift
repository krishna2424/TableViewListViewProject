//
//  ViewController.swift
//  iosTableAndList
//
//  Created by Krishan Chand Tiwari on 25/08/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func tableView(_ sender: Any) {
        let tableVie = TableViewController(nibName: "TableViewController", bundle: nil)
        self.navigationController?.pushViewController(tableVie, animated: true)
    }
    
    
    @IBAction func listView(_ sender: Any) {
        let collectionVc = CollectionViewController(nibName: "CollectionViewController", bundle: nil)
        self.navigationController?.pushViewController(collectionVc, animated: true)
    }
    
}
