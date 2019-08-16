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
    
    init(name: String, damageMelee: Int, damageRemote: Bool) {
        self.damageMelee = damageMelee
        self.damageRemote = damageRemote
        super.init(robotName: name, pointsOfLife: 100, maximumSpeedOfMovement: 3, position: (0, 0))
    }
    
    /*func attack(robots: Robot) {
        if position == (0,0) {
            robots.pointsOfLife -= damageMelee
        } else if damageRemote == true {
            robots.pointsOfLife -= damageMelee
        } else {
            print("La cible est trop loin pour être attaquée")
        }
    }*/
    
    func attack(target: Robot){
        // verifier si le mechant peut attaquer a distance ou non
        
        // sinon regarder si target se trouve dans une position adjascente a la position de mon attaquant
        // exemple
        //
        // -|-|-
        // o|x|-  => target.position.X - self.position.x == -1
        // -|-|-
        //
        // -|-|-
        // -|x|o  => target.position.X - self.position.x == 1
        // -|-|-
        //
        // -|o|-
        // -|x|-  => target.position.Y - self.position.Y == 1
        // -|-|-
        //
        //si pas distance et pas en adjascent : message d'erreur ne peut pas attaquer la cible
    }
}
