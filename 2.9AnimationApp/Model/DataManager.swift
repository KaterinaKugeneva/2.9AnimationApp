//
//  DataManager.swift
//  2.9AnimationApp
//
//  Created by Ekaterina Kugeneva on 24.11.2021.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let animationNames = Spring.AnimationPreset.allCases
    let animationCurves = Spring.AnimationCurve.allCases
}
