//
//  ViewController.swift
//  sliderProject
//
//  Created by Alvie on 2021/9/10.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var stayHome: UIImageView!
    @IBOutlet weak var hand: UIImageView!
    @IBOutlet weak var boy: UIImageView!
    @IBOutlet weak var mask: UIImageView!
    @IBOutlet weak var magnifier: UIImageView!
    @IBOutlet weak var virus: UIImageView!
    @IBOutlet weak var medicine1: UIImageView!
    @IBOutlet weak var medicine2: UIImageView!
    @IBOutlet weak var medicine3: UIImageView!
    @IBOutlet weak var medicine4: UIImageView!
    
    /*設定放大鏡旋轉，CGFloat.pi/180為1度，rotated(by: CGFloat.pi/180*degress)旋轉的角度會隨著degress的數值而改變，放大鏡原本在圓的中心，translatedBy(x: 0 , y: -350)讓它移動到圓的上方，350畫圓旋轉軌跡的半徑
     */
    func updateLocation(degress:CGFloat){
        magnifier.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi/180*degress).translatedBy(x: 0 , y: -350)
    }
   //
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func close(_ sender: UISlider) {
        let speed = sender.value*0.73
        boy.frame.origin.x = CGFloat(100+speed)
        mask.frame.origin.x = CGFloat(700-speed)
        virus.alpha = CGFloat(sender.value/360)
        //移動角度是半圓所以要sender.value/2，+270是設定旋轉的起始位置是270度
        updateLocation(degress: CGFloat(sender.value/2)+270)
        
        medicine1.frame.origin.y = CGFloat(150-speed/2)
        medicine2.frame.origin.y = CGFloat(200-speed/4)
        medicine3.frame.origin.y = CGFloat(250-speed*2)
        medicine4.frame.origin.y = CGFloat(300-speed/6)
        
        
        

    }
    


}

