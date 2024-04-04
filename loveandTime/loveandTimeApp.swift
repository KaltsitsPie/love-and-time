//
//  loveandTimeApp.swift
//  loveandTime
//
//  Created by Yanchen on 2024/4/4.
//

import SwiftUI

@main
struct loveandTimeApp: App {
    var sessionManager = SessionManager()

        var body: some Scene {
            WindowGroup {
                ContentView()
                    .environmentObject(sessionManager)
            }
        }
}
