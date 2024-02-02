//
//  SugarCounterApp.swift
//  SugarCounter
//
//  Created by User on 2024-01-13.
//
import FirebaseCore
import SwiftUI

@main
struct SugarCounterApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
