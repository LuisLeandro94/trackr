//
//  MainView.swift
//  trackr
//
//  Created by Luis on 21/11/2022.
//

import Foundation
import SwiftUI

struct MainView: View {
    @State private var goesToLogin: Bool = false
    @State private var goesToSignup: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("Logo")
                    .resizable()
                    .frame(width: 200, height: 200)
                Spacer()
                VStack {
                        Button(action: {goesToLogin = true}) {
                            Text("Get Started")
                                .frame(maxWidth: .infinity)
                        }
                        .tint(Color("Accent"))
                        .buttonStyle(.borderedProminent)
                    Text("Already have an account?")
                        .padding(.top, 20)
                        Button(action: {goesToLogin = true}) {
                            Text("Sign in")
                                .foregroundColor(Color("Accent"))
                        }
                }
                .navigationDestination(isPresented: $goesToLogin) {
                    LoginView()
                }
                .navigationDestination(isPresented: $goesToSignup) {
                    LoginView()
                }
                .padding(.horizontal, 50)
            }
        }
    }
}

struct MainView_Preview: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
