//
//  GATYAViewController.swift
//  bouninngen
//
//  Created by 杉村和栄 on 2019
//  Copyright © 2019 杉村和栄. All rights reserved.
//

import UIKit

class GATYAViewController: UIViewController {

  
    //乱数用の変数
    var rareNumber: Int!
    var gachaIndex: Int!
    
    //ガチャの画像の配列
    let rare1Array = ["","","",""]
    let rare2Array = ["","","",""]
    let rare3Array = ["","","",""]
    let rare4Array = ["","","",""]
    let rare5Array = ["","","",""]
    //スキンを表示するImageView
    @IBOutlet var skinImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rareNumber = Int.random(in: 0..<100)
        
        if rareNumber > 90 {
            
        }else if rareNumber > 50 {
            
        }else{
            
        }
        
    }
}
