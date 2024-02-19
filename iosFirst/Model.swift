//
//  Model.swift
//  iosFirst
//
//  Created by Jasmin Thummar on 12/04/24.
//

import Foundation

struct Workout: Identifiable {
    let id = UUID()      // necessary if struct is Identifiable
    var day: String
    var steps: Int
}

extension Workout {
    static let workouts: [Workout] = [
        .init(day: "Mon", steps: 16246),
        .init(day: "Tue", steps: 13478),
        .init(day: "Wed", steps: 8445),
        .init(day: "Thu", steps: 964),
        .init(day: "Fri", steps: 4567),
        .init(day: "Sat", steps: 1183),
        .init(day: "Sun", steps: 8790),
    ]
}
