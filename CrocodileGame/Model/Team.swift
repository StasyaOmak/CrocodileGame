//
//  Team.swift
//  CrocodileGame
//
//  Created by Mikhail Tedeev on 18.04.2023.
//

struct Team: Codable {
    var name: String
    var points: Int
    var pointsLifetime: Int
    var didPlayNextGame: Bool
    let avatar: String
    let avatarColor: CrocodileColors
}
