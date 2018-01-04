//
//  ViewController.swift
//  Components
//
//  Created by Ilya Belenkiy on 12/27/17.
//  Copyright © 2017 Rocket Insights. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var header1Label: UILabel!
    @IBOutlet var header2Label: UILabel!
    @IBOutlet var bodyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        header1Label.text = "Header 1"
        header2Label.text = "Header 2"
        bodyLabel.text = "Body style sentence"
    }
}
