//
//  SignupView.swift
//  loveandTime
//
//  Created by Yanchen on 2024/4/11.
//

import SwiftUI

struct SignupView: View {
    @EnvironmentObject var sessionManager: SessionManager
    @State private var email: String = ""
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var nickName: String = ""
    @State private var selectedRole: UserRole = .serviceReceiver
    @State private var password: String = ""

    var body: some View {
        NavigationView {
            Form {
                TextField("Email Address", text: $email)
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)

                TextField("First Name", text: $firstName)
                TextField("Last Name", text: $lastName)
                TextField("Nick Name", text: $nickName)

                Picker("Role", selection: $selectedRole) {
                    ForEach(UserRole.allCases, id: \.self) { role in
                        Text(role.rawValue).tag(role)
                    }
                }

                SecureField("Password", text: $password)

                Button("Sign Up") {
                    let newUser = User(email: email, firstName: firstName, lastName: lastName, nickName: nickName, role: selectedRole, password: password)
                    sessionManager.signup(user: newUser)
                }
            }
            .navigationTitle("Sign Up")
        }
    }
}


#Preview {
    SignupView()
}
