//
//  ExerciseModel.swift
//  trackr
//
//  Created by Luis on 19/11/2022.
//

import Foundation

struct Exercise: Identifiable {
    var id = UUID()
    var name: String
    var category: Category
    var unilateral: Bool
    var createdAt: Date
    
}

extension Exercise {
    static let sampleData: [Exercise] =
    [
        Exercise(name: "Cable Crunch", category: Category.Abs, unilateral: false, createdAt: Date.now),
        Exercise(name: "Hanging Knee Raises", category: Category.Abs, unilateral: false, createdAt: Date.now),
        Exercise(name: "Bench In & Outs", category: Category.Abs, unilateral: false, createdAt: Date.now),
        Exercise(name: "Russian Twist", category: Category.Abs, unilateral: false, createdAt: Date.now),
        Exercise(name: "Hanging Leg Raises", category: Category.Abs, unilateral: false, createdAt: Date.now),
        Exercise(name: "Plank", category: Category.Abs, unilateral: false, createdAt: Date.now)
    ]
}
