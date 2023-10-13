//
//  SearchTableViewCell.swift
//  Design2Case
//
//  Created by Kaan Yıldırım on 13.10.2023.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
 
    @IBOutlet weak var tableImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func cellConfig(searchItems: SearchModel) {
        tableImageView.image = UIImage(named: "\(searchItems.imageView)")
        titleLabel.text = searchItems.title
        subTitleLabel.text = searchItems.subtitle
    }
}
