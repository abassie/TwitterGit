//
//  TweetCell.swift
//  Twitter
//
//  Created by Abby  Bassie on 2/20/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {

    @IBOutlet weak var thumbImageView: UIImageView!
    
    @IBOutlet weak var userLabel: UILabel!
    
    @IBOutlet weak var tweetLabel: UILabel!
    
    var tweet: Tweet! {
        didSet {
            //ask Chase about this syntax
            userLabel.text = tweet.user.name
            tweetLabel.text = tweet?.text
            thumbImageView.setImageWithURL((tweet?.user.profileImageURL)!)
            
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
