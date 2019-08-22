//
//  bad.swift
//  ExerciseRobotSwift
//
//  Created by Waggle Glow on 16/08/2019.
//  Copyright © 2019 Waggle Glow. All rights reserved.
//

import Foundation

// 8 - Bad robots
class Bad: Robot {
    var damageMelee: Int
    var damageRemote: Bool
    
    init(damageMelee: Int, damageRemote: Bool) {
        self.damageMelee = damageMelee
        self.damageRemote = damageRemote
        super.init(robotName: "BadRobot", pointsOfLife: 100, maximumSpeedOfMovement: 3, position: (0, 0))
    }
    
    init(name: String, damageMelee: Int, damageRemote: Bool) {
        self.damageMelee = damageMelee
        self.damageRemote = damageRemote
        super.init(robotName: name, pointsOfLife: 100, maximumSpeedOfMovement: 3, position: (0, 0))
    }
    
    func attack(target: Robot) {
        if damageRemote == true {
            target.pointsOfLife -= damageMelee
        } else if target.position.X - self.position.X == -1 || target.position.X - self.position.X == 1 || target.position.Y - self.position.Y == -1 || target.position.Y - self.position.Y == 1 {
            target.pointsOfLife -= damageMelee
        } else {
            print("La cible est trop loin pour être attaquée !")
        }
    }
}
