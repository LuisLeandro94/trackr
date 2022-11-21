//
//  SignupView.swift
//  trackr
//
//  Created by Luis on 19/11/2022.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct SignupView: View {
    @State var isLogin: Bool = false
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: .infinity, height: 45, alignment: .center)
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: .infinity, height: 45, alignment: .center)
                Button(action: {isLogin ? loginUser() : createUser()}) {
                    Text(isLogin ? "Signin" : "Create")
                        .frame(maxWidth: .infinity)
                }
                .tint(Color("Accent"))
                .buttonStyle(.borderedProminent)
                .navigationTitle(isLogin ? "Sign In" : "Create Account")
            }
            .padding(.horizontal, 20)
        }
    }
    
    private func loginUser() {
           Auth.auth().signIn(withEmail: email, password: password) { result, err in
               if let err = err {
                   print("Failed due to error:", err)
                   return
               }
               print("Successfully logged in with ID: \(result?.user.uid ?? "")")
           }
       }
       
       private func createUser() {
           Auth.auth().createUser(withEmail: email, password: password, completion: { result, err in
               if let err = err {
                   print("Failed due to error:", err)
                   return
               }
               print("Successfully created account with ID: \(result?.user.uid ?? "")")
           })
       }
}


struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
