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
