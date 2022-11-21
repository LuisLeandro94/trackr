//
//  LoginView.swift
//  trackr
//
//  Created by Luis on 19/11/2022.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct LoginView: View {
    @State private var isLogin = false
    @State var email = ""
    @State var password = ""
    
    var body: some View {
            VStack(spacing: 16.0) {
                Text("Create Account")
                Spacer()
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: .infinity, height: 45)
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: .infinity, height: 45)
                Button(action: {isLogin ? loginUser() : createUser()}) {
                    Text(isLogin ? "Signin" : "Create")
                        .frame(maxWidth: .infinity)
                }
                .tint(Color("Accent"))
                .buttonStyle(.borderedProminent)
            }
            .padding(.horizontal, 20.0)
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


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
