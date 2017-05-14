//
//  DefinitionViewController.swift
//  emoji dictionary
//
//  Created by sanket shah on 13/05/2017.
//  Copyright © 2017 sanket shah. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    
    @IBOutlet weak var stringemoji: UILabel!
 
    @IBOutlet weak var definition: UILabel!
    
    @IBOutlet weak var category: UILabel!
    
    @IBOutlet var birthyear: UIView!
    
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        stringemoji.text = emoji.stringemoji
        definition.text = emoji.definition
        category.text = emoji.category
        definition.text = emoji.definition
        
        
}


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

