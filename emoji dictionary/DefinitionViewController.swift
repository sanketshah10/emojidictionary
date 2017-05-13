//
//  DefinitionViewController.swift
//  emoji dictionary
//
//  Created by sanket shah on 13/05/2017.
//  Copyright © 2017 sanket shah. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLable: UILabel!
    
    var emoji = "No Text"
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        emojiLable.text = emoji
        
}


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

