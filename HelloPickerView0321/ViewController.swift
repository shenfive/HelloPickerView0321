//
//  ViewController.swift
//  HelloPickerView0321
//
//  Created by 申潤五 on 2020/3/21.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource {

    
    
    
    @IBOutlet weak var thePickerview: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thePickerview.dataSource = self
    }

    
    //MARK: Picker View Data Source
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var number = 1
        switch component {
        case 0:
            number = 5
        case 1:
            number = 3
        default:
            break
        }
        return number
    }

}

