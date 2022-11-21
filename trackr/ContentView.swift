//
//  ContentView.swift
//  trackr
//
//  Created by Luis on 18/11/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var authModel: AuthViewModel
    
    var body: some View {
        VStack {
            Group {
                if authModel.user != nil {
                    // MainView()
                } else {
                    LoginView()
                }
            }.onAppear {
                authModel.listenToAuthState()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
