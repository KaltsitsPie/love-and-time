//
//  User.swift
//  loveandTime
//
//  Created by Yanchen on 2024/4/11.
//

import Foundation

struct User {
    var email: String
    var firstName: String
    var lastName: String
    var nickName: String
    var role: UserRole
    var password: String
}

enum UserRole: String, CaseIterable, Identifiable {
    case serviceReceiver = "Service Receiver"
    case volunteer = "Volunteer"

    var id: String { self.rawValue }
}

