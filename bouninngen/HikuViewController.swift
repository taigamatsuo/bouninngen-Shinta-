//
//  HikuViewController.swift
//  bouninngen
//
//  Created by 杉村和栄 on 
//  Copyright © 2019 杉村和栄. All rights reserved.
//

import UIKit

class HikuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
    @IBAction func JumptoGacha() {
        let saveData = UserDefaults.standard
        saveData.register(defaults: [
            "coin": 0
            ])
        var coin = saveData.integer(forKey: "coin")
        if coin >= 1000 {
            //金を払って画面移動するぅ
            coin = coin - 1000
            print(coin)
            saveData.set(coin,forKey: "coin")
            self.performSegue(withIdentifier: "JumptoCapsule", sender: nil)
        }
        else {
           let c1 : Int = 1000 - coin
            let alert: UIAlertController = UIAlertController(title:"ガチャコインが足りませーん",message: "ガチャコインを集めてください！集める方法は遊んでポイントを貯めよう！あと\(c1)ポイント必要です",preferredStyle: .alert)
            alert.addAction(
            UIAlertAction(
                title: "OK",
            style: .default,
                handler: nil)
            )
            present(alert,animated: true, completion: nil)

        }
        
    }

}
