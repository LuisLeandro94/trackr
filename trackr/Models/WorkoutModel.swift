//
//  WorkoutModel.swift
//  trackr
//
//  Created by Luis on 21/11/2022.
//

import Foundation

struct Workout: Identifiable {
    var id = UUID()
    var routine: Routine
    var startTime: Date
    var endTime: Date
    var bodyweight: Float
}
