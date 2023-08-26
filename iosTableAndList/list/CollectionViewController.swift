//
//  CollectionViewController.swift
//  iosTableAndList
//
//  Created by Krishan Chand Tiwari on 26/08/23.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    let names = ["Alice", "Bob", "Charlie", "David", "Emily", "Frank", "Grace", "Henry", "Isabel", "Jack"]
    
    private var cellRegistration: UICollectionView.CellRegistration<UICollectionViewListCell, String>!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Collection list"
        let config = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
        let layout = UICollectionViewCompositionalLayout.list(using: config)
        
        self.collectionView.collectionViewLayout = layout
        
        self.collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")

    }

 

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        if let nameLabel = cell.nameList {
            nameLabel.text = names[indexPath.row]
        }
        return cell
    }

   
    
}
