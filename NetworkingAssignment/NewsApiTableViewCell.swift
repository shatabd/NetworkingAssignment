//
//  NewsApiTableViewCell.swift
//  NetworkingAssignment
//
//  Created by Macmini-13 on 20/09/2022.
//

import UIKit

class NewsApiTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var publishedDateLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
