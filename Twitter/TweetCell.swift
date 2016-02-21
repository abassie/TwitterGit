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
    
    
    @IBOutlet weak var likeBtn: UIButton!
    
    @IBOutlet weak var rtBtn: UIButton!
    
    var tweet: Tweet! {
        didSet {
            //ask Chase about this syntax
            userLabel.text = tweet.user.name
            tweetLabel.text = tweet?.text
            thumbImageView.setImageWithURL((tweet?.user.profileImageURL)!)
            setBtnStates()
            
        }
    }
    
    func setBtnStates() {
        if let retweeted = tweet?.retweeted {
            if retweeted {
                rtBtn.setBackgroundImage(UIImage(named: "rt_on"), forState: .Normal)
                rtBtn.enabled = false
            }
            else {
                rtBtn.setBackgroundImage(UIImage(named: "rt_off"), forState: .Normal)
                rtBtn.enabled = true
            }
            
        }
    
    
    if let liked = tweet?.liked {
        if liked {
            likeBtn.setBackgroundImage(UIImage(named: "like_on"), forState: .Normal)
            likeBtn.enabled = false
        }
        else {
            likeBtn.setBackgroundImage(UIImage(named: "like_off"), forState: .Normal)
            likeBtn.enabled = true
        }
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        rtBtn.setBackgroundImage(UIImage(named: "rt_on"), forState: .Disabled)
        likeBtn.setBackgroundImage(UIImage(named: "rt_off"), forState: .Disabled)
        
        let btnTapped = UITapGestureRecognizer(target: self, action: "tappedUserImageView")
        btnTapped.numberOfTapsRequired = 1
        thumbImageView.addGestureRecognizer(btnTapped)
        

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        thumbImageView.image = nil
        setBtnStates()
        
    }

}
