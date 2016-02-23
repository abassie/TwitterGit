//
//  TweetDetailViewController.swift
//  Twitter
//
//  Created by Abby  Bassie on 2/22/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class TweetDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var tweetCell : TweetCell?
    
    var tweet: Tweet!

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        
        // Do any additional setup after loading the view.
    
            self.tableView.reloadData()
            //tweet.favorite here will do a post instead of get
            
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tweet != nil {
            return 1
        } else {
            
            return 0
        }
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TweetDetailCell", forIndexPath: indexPath) as! TweetCell
        
        cell.tweet = tweet!
        
        return cell
    }

}
