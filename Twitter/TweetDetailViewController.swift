//
//  TweetDetailViewController.swift
//  Twitter
//
//  Created by Abby  Bassie on 2/22/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class TweetDetailViewController: UIViewController {
    
    @IBOutlet weak var thumbImageView: UIImageView!
    
    @IBOutlet weak var userLabel: UILabel!
    
    @IBOutlet weak var tweetLabel: UILabel!
    
    @IBOutlet weak var likeBtn: UIButton!
    
    @IBOutlet weak var rtBtn: UIButton!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var likeLabel: UILabel!

    @IBOutlet weak var rtCountLabel: UILabel!
    
    
    
    var tweet: Tweet!

    
    override func viewDidLoad() {
        super.viewDidLoad()

 userLabel.text = tweet.user.name
        tweetLabel.text = tweet?.text
        thumbImageView.setImageWithURL((tweet?.user.profileImageURL)!)
        
        rtCountLabel.text = "\((tweet.retweetCount)!)"
        likeLabel.text = "\((tweet.favoritesCount)!)"

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
