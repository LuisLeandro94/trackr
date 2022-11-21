//
//  SignUpView.swift
//  trackr
//
//  Created by Luis on 20/11/2022.
//

import SwiftUI
import Firebase

struct SignUpView: View {
    @State var signUpProcessing = false
    var body: some View {
        
    }
    
    func signUpUser(userEmail: String, userPassword: String) {
        signUpProcessing = true
        Auth.auth().createUser(withEmail: userEmail, password: userPassword) { authResult, error in
            guard error == nil else {
                signUpProcessing = false
                return
            }
            
            switch authResult {
            case .none:
                print("Could not create account.")
                signUpProcessing = false
            case .some(_):
                print("User created")
                signUpProcessing = false
                viewRouter.currentPage = .homePage
            }
        }
    }
}
