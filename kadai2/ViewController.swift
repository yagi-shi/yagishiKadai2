//
//  ViewController.swift
//  kadai2
//
//  Created by 八木佑樹 on 2024/03/12.
//

import UIKit

class ViewController: UIViewController {
//    コンポーネント定義
    @IBOutlet weak var value1: UITextField!
    @IBOutlet weak var value2: UITextField!
    @IBOutlet weak var result: UILabel!
    
//    計算方法
    @IBOutlet weak var calculateWay: UISegmentedControl!
    
//    計算実行
    @IBAction func calculate(_ sender: Any) {
//        String?->Int?->Intへ変換
        let num1 = Double(value1.text ?? "") ?? 0
        let num2 = Double(value2.text ?? "") ?? 0
        
        switch calculateWay.selectedSegmentIndex{
        case 0:
            result.text = String(num1 + num2)
        case 1:
            result.text = String(num1 - num2)
        case 2:
            result.text = String(num1 * num2)
        case 3:
            if num2 == 0{
                result.text = "0では割ることはできません！"
            }else{
                result.text = String(num1 / num2)
            }
        default: 
            break
        }
    }
}

