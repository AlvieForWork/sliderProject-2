//
//  ViewController.swift
//  sliderProject
//
//  Created by worker on 2021/9/10.
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
    
    
    func updateLocation(degress:CGFloat){
        magnifier.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi/180*degress).translatedBy(x: 0 , y: -350)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateLocation(degress: 270)
    }
    
    
    @IBAction func close(_ sender: UISlider) {
        let speed = sender.value*0.73
        boy.frame.origin.x = CGFloat(100+speed)
        mask.frame.origin.x = CGFloat(700-speed)
        virus.alpha = CGFloat(sender.value/360)
        updateLocation(degress: CGFloat(sender.value/2)+270)
        
        medicine1.frame.origin.y = CGFloat(150-speed/3)
        medicine2.frame.origin.y = CGFloat(200-speed/4)
        medicine3.frame.origin.y = CGFloat(250-speed*2)
        medicine4.frame.origin.y = CGFloat(300-speed/6)
        
        
        

    }
    


}

