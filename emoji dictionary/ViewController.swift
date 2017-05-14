//
//  ViewController.swift
//  emoji dictionary
//
//  Created by sanket shah on 13/05/2017.
//  Copyright © 2017 sanket shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojitableview: UITableView!
    
    var emojis : [Emoji] = [] // the emoji array
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojitableview.dataSource = self
        emojitableview.delegate = self
        
        emojis = emojiarray()
        
        // this is required for table views
        
        self.view.backgroundColor = UIColor.whiteColor() // screen background color
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count //rows are equal to total emojis in the emoji array
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringemoji
        
        // this allocates the different emojis to specific index of array in the rows
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let emoji = emojis[indexPath.row]
        performSegueWithIdentifier("moveSegue", sender: emoji)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let defVC = segue.destinationViewController as! DefinitionViewController
        
        defVC.emoji = sender as! Emoji
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func emojiarray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringemoji = "😀"
        emoji1.definition = "Happy smiley"
        emoji1.category = "Smiley"
        emoji1.birthyear = 2011
        
        let emoji2 = Emoji()
        emoji2.stringemoji = "☹️"
        emoji2.definition = "Sad smiley"
        emoji2.category = "Smiley"
        emoji2.birthyear = 2013
    
        let emoji3 = Emoji()
        emoji3.stringemoji = "☹️"
        emoji3.definition = "Very sad smiley"
        emoji3.category = "Smiley"
        emoji3.birthyear = 2009
    
        let emoji4 = Emoji()
        emoji4.stringemoji = "😫"
        emoji4.definition = "Crying smiley"
        emoji4.category = "Smiley"
        emoji4.birthyear = 2008
        
        let emoji5 = Emoji()
        emoji5.stringemoji = "😱"
        emoji5.definition = "Shocked smiley"
        emoji5.category = "Smiley"
        emoji5.birthyear = 2014
    
    return [emoji1, emoji2, emoji3, emoji4, emoji5]
    
    }
    

}

