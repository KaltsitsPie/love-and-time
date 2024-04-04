//
//  ContentView.swift
//  loveandTime
//
//  Created by Yanchen on 2024/4/4.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var sessionManager: SessionManager

        var body: some View {
            if sessionManager.isLoggedIn {
                MyView()
            } else {
                LoginView()
            }
        }
}

#Preview {
    ContentView()
}
