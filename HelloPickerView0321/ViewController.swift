//
//  ViewController.swift
//  HelloPickerView0321
//
//  Created by 申潤五 on 2020/3/21.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    var astrological = ["請選擇你的星座","白羊宮","金牛宮","雙子宮","巨蟹宮","獅子宮","處女宮","天秤宮","天蠍宮","射手宮","摩羯宮","水瓶宮","雙魚宮"]
    var bloudType = ["請選擇你的血型","A","B","O","AB"]
    var selectedAst = 0
    var selectedBld = 0
    
    
    
    @IBOutlet weak var thePickerview: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thePickerview.dataSource = self
        thePickerview.delegate = self
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextPage = segue.destination as? Page2ViewController{
            nextPage.ast = astrological[selectedAst]
            nextPage.bld = bloudType[selectedBld]
        }
    }
    
    //MARK: Picker View Data Source
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var number = 1
        switch component {
        case 0:
            number = astrological.count
        case 1:
            number = bloudType.count
        default:
            break
        }
        return number
    }

    
    //MARK:UIPicerView Delegate
    //選擇之後的動作
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("row:\(row)  component:\(component)")
        switch component {
        case 0:
            selectedAst = row
        case 1:
            selectedBld = row
        default:
            break
        }
        if selectedAst != 0 && selectedBld != 0{
            print("goNextPage")
            performSegue(withIdentifier: "goToNext", sender: self)
        }else{
            print("還沒選完")
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return astrological[row]
        case 1:
            return bloudType[row]
        default:
            return ""
        }
    }
    
    
    
}

