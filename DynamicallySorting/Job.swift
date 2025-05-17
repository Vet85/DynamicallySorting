//
//  Job.swift
//  DynamicallySorting
//
//  Created by Vitaliy Novichenko on 18.05.2025.
//

import Foundation
import SwiftData

@Model
class Job {
    var name: String
    var priority: Int
    var owner: User?
    
    init(name: String, priority: Int, owner: User? = nil) {
        self.name = name
        self.priority = priority
        self.owner = owner
    }
}
