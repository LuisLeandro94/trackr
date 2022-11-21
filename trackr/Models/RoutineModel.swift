//
//  RoutineModel.swift
//  trackr
//
//  Created by Luis on 21/11/2022.
//

import Foundation

struct Routine: Identifiable {
    var id = UUID()
    var name: String
    var notes: String
    var exercises: [Exercise]
    var createdAt: Date
}

extension Routine {
    static let sampleData: [Routine] =
    [
        Routine(name: "Core", notes: "", exercises: Exercise.sampleData, createdAt: Date.now),
        Routine(name: "Core2", notes: "", exercises: Exercise.sampleData, createdAt: Date.now),
        Routine(name: "Core3", notes: "", exercises: Exercise.sampleData, createdAt: Date.now),
        Routine(name: "Core4", notes: "", exercises: Exercise.sampleData, createdAt: Date.now),
    ]
}
