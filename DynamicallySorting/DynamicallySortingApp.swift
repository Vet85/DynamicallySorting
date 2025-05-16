//
//  DynamicallySortingApp.swift
//  DynamicallySorting
//
//  Created by Vitaliy Novichenko on 15.05.2025.
//
import SwiftData
import SwiftUI

@main
struct DynamicallySortingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
