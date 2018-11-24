//
//  EndGame.swift
//  appMiniProject_13600201
//
//  Created by ict on 16/11/2561 BE.
//  Copyright © 2561 ictnaja. All rights reserved.
//

import Foundation
import UIKit

class EndGame: UIViewController {
    
    @IBOutlet weak var textCongrat: UILabel!
    
    var randomBonusIndex1 : Int = 0
    
    let bonusArray = ["G1", "G2", "G3", "G4", "G5"]

    @IBAction func randomButton(_ sender: Any) {
        changeBonus()
        if bunusImage.image == UIImage(named: bonusArray[0]){
           textCongrat.text = "ยินดีด้วย! คุณได้รับเหรียญไปสะสม!"
        }else if
            bunusImage.image == UIImage(named: bonusArray[1]){
            textCongrat.text = "ยินดีด้วย! คุณได้รับดอกมุราคามิไปโชว์ที่สยาม!"
        }else if
            bunusImage.image == UIImage(named: bonusArray[2]){
            textCongrat.text = "ยินดีด้วย! คุณได้รับค็อกเทลไปดื่มแก้หัวร้อน"
        }else if
            bunusImage.image == UIImage(named: bonusArray[3]){
            textCongrat.text = "ยินดีด้วย! คุณได้รับตุ๊กตาหมีซ่อนกล้องไปวางโชว์"
        }
        else if
            bunusImage.image == UIImage(named: bonusArray[4]){
            textCongrat.text = "ยินดีด้วย! คุณได้รับหัวใจพองโต!"
        }
        
        
    }
    
    func changeBonus() {
        randomBonusIndex1 = Int(arc4random_uniform(5))
        
        bunusImage.image = UIImage(named:bonusArray[randomBonusIndex1])
    }
    @IBOutlet weak var bunusImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeBonus()
        if bunusImage.image == UIImage(named: bonusArray[0]){
            textCongrat.text = "ยินดีด้วย! คุณได้รับเหรียญไปสะสม!"
        }else if
            bunusImage.image == UIImage(named: bonusArray[1]){
            textCongrat.text = "ยินดีด้วย! คุณได้รับดอกมุราคามิไปโชว์ที่สยาม!"
        }else if
            bunusImage.image == UIImage(named: bonusArray[2]){
            textCongrat.text = "ยินดีด้วย! คุณได้รับค็อกเทลไปดื่มแก้หัวร้อน"
        }else if
            bunusImage.image == UIImage(named: bonusArray[3]){
            textCongrat.text = "ยินดีด้วย! คุณได้รับตุ๊กตาหมีซ่อนกล้องไปวางโชว์"
        }
        else if
            bunusImage.image == UIImage(named: bonusArray[4]){
            textCongrat.text = "ยินดีด้วย! คุณได้รับหัวใจพองโต!"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
