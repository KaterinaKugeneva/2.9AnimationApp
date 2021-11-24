//
//  ViewController.swift
//  2.9AnimationApp
//
//  Created by Ekaterina Kugeneva on 24.11.2021.
//

import UIKit
import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var animationView: SpringView!
    
    let animationArray = Animation.createAnimation()
    var index : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if index <= animationArray.count-1 {
            
            animationView.animation = animationArray[index].animationName
            nameLabel.text = animationArray[index].animationName
            
            animationView.curve = animationArray[index].animationCurve
            curveLabel.text = "curve: " + animationArray[index].animationCurve
            
            animationView.force = animationArray[index].animationForce
            forceLabel.text = "force: \(animationArray[index].animationForce)"
            
            animationView.duration = animationArray[index].animationDuration
            durationLabel.text = "duration: \(animationArray[index].animationDuration)"
            
            animationView.delay = animationArray[index].animationDelay
            delayLabel.text = " delay: \(animationArray[index].animationDelay)"
            
            animationView.animate()
            
            
            if index == animationArray.count-1 {
                index = 0
                nextButton.setTitle("Next: \(animationArray[index].animationName)", for: .normal)
            } else {nextButton.setTitle("Next: \(animationArray[index+1].animationName)", for: .normal)}
            index += 1
            
        }
        
        
        
    }
    
}
