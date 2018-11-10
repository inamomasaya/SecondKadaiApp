//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by AM16J0 on 2018/11/06.
//  Copyright © 2018年 masaya inamo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    let textfield = UITextField()
        
        textfield.delegate = self
        
        textfield.placeholder = "テキストを入力"
        
        textfield.clearButtonMode = .always
        
        // 改行ボタンの種類を変更
        textfield.returnKeyType = .done
        
        self.view.addSubview(textfield)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textfield: UITextField) -> Bool {
        
        // キーボードを隠す
        textfield.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
    
        resultViewController.result = textfield.text!
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
}

