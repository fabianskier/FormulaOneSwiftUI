//
//  Team.swift
//  FormulaOneSwiftUI
//
//  Created by Oscar Cristaldo on 2022-07-20.
//

import Foundation

struct Team: Codable, Identifiable {
    enum CodingKeys: String, CodingKey {
        case id                 = "id"
        case name               = "name"
        case base               = "base"
        case powerUnit          = "power_unit"
        case teamChief          = "team_chief"
        case technicalChief     = "technical_chief"
        case chassis            = "chassis"
        case entry              = "entry"
        case fastestLap         = "fastest_lap"
        case highestRaceFinish  = "highest_race_finish"
        case polePosition       = "pole_position"
        case worldChampionship  = "world_championship"
        case teamImageUrl       = "team_image_url"
        case carImageUrl        = "car_image_url"
    }
    
    let id: Int
    let name: String
    let base: String
    let powerUnit: String
    let teamChief: String
    let technicalChief: String
    let chassis: String
    let entry: String
    let fastestLap: Int
    let highestRaceFinish: String
    let polePosition: Int
    let worldChampionship: Int
    let teamImageUrl: String
    let carImageUrl: String
    
}

struct TeamResponse: Codable {
    enum CodingKeys: String, CodingKey {
        case request = "data"
    }
    
    let request: [Team]
}

struct MockData {
    static let redBullTeam =
    Team(id: 1,
         name: "Oracle Red Bull Racing",
         base: "Milton Keynes, United Kingdom",
         powerUnit: "Red Bull Powertrains",
         teamChief: "Christian Horner",
         technicalChief: "Pierre Wache",
         chassis: "RB18",
         entry: "1997",
         fastestLap: 81,
         highestRaceFinish: "1 (x82)",
         polePosition: 77,
         worldChampionship: 4,
         teamImageUrl: "https://f1-api-fabianskier.herokuapp.com/images/2022/teams/Oracle%20Red%20Bull%20Racing.jpeg",
         carImageUrl: "https://f1-api-fabianskier.herokuapp.com/images/2022/cars/RB18.png")
    
    static let scuderiaFerrariTeam =
    Team(id: 2,
         name: "Scuderia Ferrari",
         base: "Maranello, Italy",
         powerUnit: "Ferrari",
         teamChief: "Mattia Binotto",
         technicalChief: "Enrico Cardile / Enrico Gualtieri",
         chassis: "F1-75",
         entry: "1950",
         fastestLap: 257,
         highestRaceFinish: "1 (x243)",
         polePosition: 237,
         worldChampionship: 16,
         teamImageUrl: "https://f1-api-fabianskier.herokuapp.com/images/2022/teams/Scuderia%20Ferrari.jpeg",
         carImageUrl: "https://f1-api-fabianskier.herokuapp.com/images/2022/cars/F1-75.png")
    
    static let mercedesTeam =
    Team(id: 3,
         name: "Mercedes-AMG Petronas F1 Team",
         base: "Brackley, United Kingdom",
         powerUnit: "Mercedes",
         teamChief: "Toto Wolff",
         technicalChief: "Mike Elliott",
         chassis: "W13",
         entry: "1970",
         fastestLap: 86,
         highestRaceFinish: "1 (x115)",
         polePosition: 127,
         worldChampionship: 8,
         teamImageUrl: "https://f1-api-fabianskier.herokuapp.com/images/2022/teams/Mercedes-AMG%20Petronas%20F1%20Team.jpeg",
         carImageUrl: "https://f1-api-fabianskier.herokuapp.com/images/2022/cars/W13.png")
    
    static let teams = [
        redBullTeam,
        scuderiaFerrariTeam,
        mercedesTeam
    ]
}
