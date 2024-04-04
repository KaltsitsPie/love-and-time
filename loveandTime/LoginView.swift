//
//  LoginView.swift
//  loveandTime
//
//  Created by Yanchen on 2024/4/11.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var sessionManager: SessionManager
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        NavigationView {
            VStack {
                TextField("Email Address", text: $email)
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)
                    .padding()

                SecureField("Password", text: $password)
                    .padding()

                Button("Log In") {
                    sessionManager.login(email: email, password: password)
                }
                .padding()

                NavigationLink("Sign Up", destination: SignupView())
            }
            .padding()
            .navigationTitle("Log In")
        }
    }
}


#Preview {
    LoginView()
}
