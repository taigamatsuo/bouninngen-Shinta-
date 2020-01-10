//
//  gameViewController.swift
//  bouninngen
//
//  Created by 杉村和栄 on 2019/
//  Copyright © 2019 杉村和栄. All rights reserved.
//

import UIKit
import VHProgressBar

class gameViewController: UIViewController {
    
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var gezi: VerticalProgressBar!
    //使う部品をここに宣言！
    @IBOutlet var playerImageView: UIImageView!
    
    let screenSize: CGSize = UIScreen.main.bounds.size //デバイスのサイズを取得
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //scrollViewの設定
        scrollView.contentSize = CGSize(width: self.screenSize.width, height: 4096 ) //中身のサイズ
        scrollView.frame.size = CGSize(width: self.screenSize.width, height: self.screenSize.height) //窓
        scrollView.contentOffset.y = 4096 - self.screenSize.height //どれだけスクロールしてるか（初期位置）
        
        //ゲージの設定
        gezi.pgHeight = self.screenSize.height - 100 //ゲージの高さ
        
        print(screenSize.width, screenSize.height)
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        gezi.startAnimation(type: "reverse", duration: 0.4)
    }
    
    
    @IBAction func tobu(_ sender: Any) {
        
        gezi.stopAnimation() //ゲージが止まる
        
        let geziValue = gezi.getProgress()
        let percent = CGFloat( geziValue/gezi.pgHeight ) //ボタンを押したタイミングのゲージの割合
        print(percent)
        //        print(type(of: percent))
        percentLabel.text = NSString(format: "%.4f",percent) as String
        
        let saveDate = UserDefaults.standard
        saveDate.register(defaults: [
            "coin": 0
            ])
        var coin = saveDate.integer(forKey: "coin")
        print(coin)
        // coinの値を更新する
        coin = coin + Int(percent * 100)
        saveDate.set(coin,forKey: "coin")
        
        
        UIView.animate(withDuration: TimeInterval(0.561*(1+percent)) , //アニメーションの継続時間
            delay: 0.0, //ボタンを押してからアニメーションを開始するまでの時間
            options: [.curveEaseOut, .autoreverse], //逆再生やタイミング曲線などのオプション指定
            animations: { self.playerImageView.center.y -= percent*1000
                self.scrollView.contentOffset.y = (4096 - self.screenSize.height)*CGFloat(1.0-percent)
                
        } //アニメーションの内容
        ){ _ in
            self.playerImageView.center.y += percent*1000 //アニメーション終了後にする内容
            self.scrollView.contentOffset.y = 4096 - self.screenSize.height //どれだけスクロールしてるか（初期位置）
            
            self.gezi.startAnimation(type: "reverse", duration: 0.4)
            
        }
    }
    
}
