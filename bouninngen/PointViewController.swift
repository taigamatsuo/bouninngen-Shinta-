//
//  PointViewController.swift
//  bouninngen
//
//  Created by 杉村和栄 on 
//  Copyright © 2019 杉村和栄. All rights reserved.
//

import UIKit

class PointViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let saveData = UserDefaults.standard
        saveData.register(defaults: [
            "coin": 0
            ])
        var coin = saveData.integer(forKey: "coin")
        
        coin += 1000000
        
        saveData.set(coin, forKey: "coin")

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
