//
//  ViewController.swift
//  KSUIKit
//
//  Created by srinivasan.munna@gmail.com on 06/23/2017.
//  Copyright (c) 2017 srinivasan.munna@gmail.com. All rights reserved.
//

import UIKit
import KSUIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblText: KSUILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func setRegular(_ sender: Any) {
        lblText.fontType = "Regular"
    }
    
    @IBAction func setItalic(_ sender: Any) {
        lblText.fontType = "Italic"
    }
    
    @IBAction func setBold(_ sender: Any) {
        lblText.fontType = "Bold"
    }
    
    @IBAction func setBoldItalic(_ sender: Any) {
        lblText.fontType = "BoldItalic"
    }
}

