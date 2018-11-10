//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by AM16J0 on 2018/11/06.
//  Copyright © 2018年 masaya inamo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var result : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
        label.text = "こんにちは、\(result!) さん"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
