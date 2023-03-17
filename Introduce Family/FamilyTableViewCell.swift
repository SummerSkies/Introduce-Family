//
//  FamilyTableViewCell.swift
//  Introduce Family
//
//  Created by Juliana Nielson on 3/16/23.
//

import UIKit

class FamilyTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with sibling: Sibling) {
        nameLabel.text = sibling.name
        nameLabel.textColor = sibling.color
    }

}
