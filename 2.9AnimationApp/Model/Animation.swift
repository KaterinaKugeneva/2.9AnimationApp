//
//  Animation.swift
//  2.9AnimationApp
//
//  Created by Ekaterina Kugeneva on 24.11.2021.
//

import Foundation
import Spring

struct Animation {
    var animationName : String
    var animationCurve : String
    var animationForce : CGFloat
    var animationDuration : CGFloat
    var animationDelay : CGFloat
}

extension Animation {
    static func createAnimation() -> [Animation]{
        var animations : [Animation] = []
        
        let names = DataManager.shared.animationNames.shuffled()
        let curves = DataManager.shared.animationCurves.shuffled()
        var force : CGFloat {get {return CGFloat.random(in: 0...20).rounded()/10}}
        var duration : CGFloat {get {return CGFloat.random(in: 0...30).rounded()/10}}
        var delay : CGFloat {get {return CGFloat.random(in: 0...10).rounded()/10}}
        for index in 0..<names.count {
            let oneAnimation = Animation (animationName: names[index].rawValue,
                                          animationCurve: curves[index].rawValue,
                                          animationForce: force,
                                          animationDuration: duration,
                                          animationDelay: delay)
            animations.append(oneAnimation)
        }
        
        return animations
    }
}
