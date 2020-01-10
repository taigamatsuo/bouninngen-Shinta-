//
//  GachaResultViewController.swift
//  bouninngen
//
//  Created by 杉村和栄 on
//  Copyright © 2019 杉村和栄. All rights reserved.
//

import UIKit

class GachaResultViewController: UIViewController {
@IBOutlet var  monsterImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //乱数を入れるためのInt型の変数を用意
        var number: Int!
        number = Int(arc4random_uniform(1000))
        if number < 5 {
            //激レアモンスター
            monsterImageView.image = UIImage(named: "monster004")
            
        }else if number < 35 {
            monsterImageView.image = UIImage(named: "monster003")
            
        }else if number < 55{
            print(number)
            monsterImageView.image = UIImage(named: "monster002")
        
        }else if number < 25{
            print(number)
            monsterImageView.image = UIImage(named: "monster006")
            
        }else {
            print(number)
            monsterImageView.image = UIImage(named: "monster001")
        
        
        }
        
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





























































