//
//  MovieTableViewCell.swift
//  AlamofireWithSwiftyJSON
//
//  Created by Chen, Wenbin on 9/14/16.
//  Copyright © 2016 Kode. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    //properties
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
