//
//  main.swift
//  ExerciseRobotSwift
//
//  Created by Waggle Glow on 16/08/2019.
//  Copyright © 2019 Waggle Glow. All rights reserved.
//

import Foundation

// 1 - Create a robot class and generate a robot (generate a robot)
var oneRobot = Robot(robotName: "Roby")

// 2 - Robot has a friend (generate a second robot)
var twoRobot = Robot(robotName: "Margotte")

// 4 - An army of robots (make robots to introduce)
var threeRobot = Robot(robotName: "Sunny", pointsOfLife: 90, maximumSpeedOfMovement: 2, position: (0, 1))

var fourRobot = Robot(robotName: "Wayo")

var listOfRobots = [oneRobot, twoRobot, threeRobot, fourRobot]

for robots in listOfRobots {
    robots.introduce()
}

var fiveRobot = Robot(robotName: "Dino")
fiveRobot.move(direction: .up, choiceSpeed: 2)
fiveRobot.introduce()

var badRobot = Bad(damageMelee: 20, damageRemote: true)

badRobot.introduce()
badRobot.attack(target: twoRobot)
twoRobot.introduce()
fourRobot.seDeplacerAleatoirement(coups: 5)
fourRobot.introduce()

