//
//  RepoTableViewCell.swift
//  GithubDemo
//
//  Created by Ming Horn on 6/23/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class RepoTableViewCell: UITableViewCell {


    @IBOutlet weak var forks: UILabel!
    @IBOutlet weak var stars: UILabel!
    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
