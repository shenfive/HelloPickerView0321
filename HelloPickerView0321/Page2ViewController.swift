//
//  Page2ViewController.swift
//  HelloPickerView0321
//
//  Created by 申潤五 on 2020/3/21.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class Page2ViewController: UIViewController {
    
    var ast = "0"
    var bld = "1"
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        label1.text = ast
        label2.text = bld
        
    }

}
