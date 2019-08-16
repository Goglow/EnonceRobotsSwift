//
//  bad.swift
//  ExerciseRobotSwift
//
//  Created by Waggle Glow on 16/08/2019.
//  Copyright © 2019 Waggle Glow. All rights reserved.
//

import Foundation

public class Bad: Robot {
    var damageMelee: Int
    var damageRemote: Bool
    
    init(damageMelee: Int, damageRemote: Bool) {
        self.damageMelee = damageMelee
        self.damageRemote = damageRemote
        super.init(robotName: "BadRobot", pointsOfLife: 100, maximumSpeedOfMovement: 3, position: (0, 0))
    }
    
    func attack(robots: Robot) {
        if position == (0,0) {
            robots.pointsOfLife -= damageMelee
        } else if damageRemote == true {
            robots.pointsOfLife -= damageMelee
        } else {
            print("La cible est trop loin pour être attaquée")
        }
    }
}
