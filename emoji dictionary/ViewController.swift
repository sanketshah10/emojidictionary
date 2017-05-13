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
    
    var emojis = ["😀", "🙂", "☹️", "😫", "😱"] // the emoji array
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojitableview.dataSource = self
        emojitableview.delegate = self
        
        // this is required for table views
        
        self.view.backgroundColor = UIColor.whiteColor() // screen background color
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count //rows are equal to total emojis in the emoji array
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = emojis[indexPath.row]
        
        // this allocates the different emojis to specific index of array in the rows
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

