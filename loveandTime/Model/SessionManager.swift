//
//  SessionManager.swift
//  loveandTime
//
//  Created by Yanchen on 2024/4/11.
//

import Foundation

class SessionManager: ObservableObject {
    @Published var isLoggedIn = false

    func login(email: String, password: String) {
        
        isLoggedIn = true
    }

    func signup(user: User) {
        
        isLoggedIn = true
    }

    func logout() {
        isLoggedIn = false
    }
}

