//
//  TableViewCell.swift
//  iosTableAndList
//
//  Created by Krishan Chand Tiwari on 25/08/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    

    @IBOutlet weak var nameText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
    }
    
}
