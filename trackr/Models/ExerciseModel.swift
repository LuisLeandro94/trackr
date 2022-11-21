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
    var category: CategoryEnum
    var unilateral: Bool
    var createdAt: Date
    
}

