//
//  robot.swift
//  ExerciseRobotSwift
//
//  Created by Waggle Glow on 16/08/2019.
//  Copyright © 2019 Waggle Glow. All rights reserved.
//

import Foundation

public class Robot {
    var robotName: String
    var pointsOfLife: Int
    var maximumSpeedOfMovement: Int
    var position: (X: Int, Y: Int)
    
    init(robotName: String) {
        self.robotName = robotName
        pointsOfLife = 100
        maximumSpeedOfMovement = 3
        position = (0, 0)
    }
    
    init(robotName: String, pointsOfLife: Int, maximumSpeedOfMovement: Int, position: (Int, Int)) {
        self.robotName = robotName
        self.pointsOfLife = pointsOfLife
        self.maximumSpeedOfMovement = maximumSpeedOfMovement
        self.position = position
    }
    
    func introdiuce() {
        print("Bonjour je m'appelle \(robotName). J'ai \(pointsOfLife) points de vie et je me déplace à \(maximumSpeedOfMovement) cases par seconde. Je suis à la case de coordonnées \(position).")
    }
    
    func move(direction: Direction, choiceSpeed: Int) {
        if choiceSpeed <= 3 {
            maximumSpeedOfMovement = choiceSpeed
        } else {
            maximumSpeedOfMovement = 3
        }
        switch direction {
        case .up :
            self.position.Y += choiceSpeed
        case .down :
            self.position.Y -= choiceSpeed
        case .left :
            self.position.X -= choiceSpeed
        case .right :
            self.position.X += choiceSpeed
        }
    }
    
    func seDeplacerAleatoirement(coups: Int) -> Int {
        return Int(arc4random_uniform(UInt32(coups)))
    }
}
