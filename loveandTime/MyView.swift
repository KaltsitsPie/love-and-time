//
//  MyView.swift
//  loveandTime
//
//  Created by Yanchen on 2024/4/11.
//

import SwiftUI

struct MyView: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        VStack {
            Text("Welcome to the App!")
            NavigationLink("Sign Out", destination: LoginView())
                .simultaneousGesture(TapGesture().onEnded {
                                        sessionManager.logout()
                                    })
        }
        
    }
}


#Preview {
    MyView()
}
