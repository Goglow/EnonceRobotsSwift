//
//  main.swift
//  ExerciseRobotSwift
//
//  Created by Waggle Glow on 16/08/2019.
//  Copyright © 2019 Waggle Glow. All rights reserved.
//

import Foundation

var oneRobot = Robot(robotName: "Roby")

var twoRobot = Robot(robotName: "Margotte")

var threeRobot = Robot(robotName: "Sunny", pointsOfLife: 90, maximumSpeedOfMovement: 2, position: (0, 1))

var fourRobot = Robot(robotName: "Wayo")

var listOfRobots = [oneRobot, twoRobot, threeRobot, fourRobot]

for robots in listOfRobots {
    robots.introdiuce()
}

var fiveRobot = Robot(robotName: "Dadou")
fiveRobot.move(direction: .up, choiceSpeed: 2)
fiveRobot.introdiuce()

var badRobot = Bad(damageMelee: 20, damageRemote: true)

badRobot.introdiuce()
badRobot.attack(robots: twoRobot)
twoRobot.introdiuce()
twoRobot.seDeplacerAleatoirement(coups: 5)


