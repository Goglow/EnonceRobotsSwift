//
//  robot.swift
//  ExerciseRobotSwift
//
//  Created by Waggle Glow on 16/08/2019.
//  Copyright © 2019 Waggle Glow. All rights reserved.
//

import Foundation

// 1 - Create a robot class and generate a robot (create a robot class)
class Robot {
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
// 7 - Unique robots
    init(robotName: String, pointsOfLife: Int, maximumSpeedOfMovement: Int, position: (Int, Int)) {
        self.robotName = robotName
        self.pointsOfLife = pointsOfLife
        self.maximumSpeedOfMovement = maximumSpeedOfMovement
        self.position = position
    }
// 3 - Talking robots (ask each robot to introduce themselves)
    func introduce() {
        print("Bonjour je m'appelle \(self.robotName). J'ai \(self.pointsOfLife) points de vie et je me déplace à \(self.maximumSpeedOfMovement) cases par seconde. Je suis à la position X: \(self.position.X), Y: \(self.position.Y).")
    }
// 5 - Robots conquer the world
    func move(direction: Direction, choiceSpeed: Int) {
        var speed = 0
        if choiceSpeed <= 3 {
            speed =  choiceSpeed
        } else {
            speed =  maximumSpeedOfMovement
        }
        switch direction {
        case .up :
            self.position.Y += speed
        case .down :
            self.position.Y -= speed
        case .left :
            self.position.X -= speed
        case .right :
            self.position.X += speed
        }
        print("\(self.robotName) est maintenant a la position X: \(self.position.X), Y: \(self.position.Y)")
    }
// 6 - In Brownian motion
    func seDeplacerAleatoirement(coups: Int) {
        for _ in 1...coups {
            let speed = Int.random(in: 0...maximumSpeedOfMovement)
            let direction = Direction.allCases.randomElement()!
            move(direction: direction, choiceSpeed: speed)
        }
    }
}
