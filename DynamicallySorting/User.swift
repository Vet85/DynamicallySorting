//
//  User.swift
//  DynamicallySorting
//
//  Created by Vitaliy Novichenko on 15.05.2025.
//

import Foundation
import SwiftData


@Model
class User {
    var name: String
    var city: String
    var joinDate: Date
    
    init(name: String, city: String, joinDate: Date) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
    }
}
