//
//  LoginView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 3/10/23.
//

import SwiftUI

struct LoginView: View {
    @Binding var username : String
    @Binding var password : String
    @Binding var token : String
    @Binding var polygonToken: String
    @Binding var splashScreenIsShowing : Bool
    @State private var notExist: Bool = false
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("BackgroundColor"), Color("BackgroundGradientEnd")]), startPoint: .top, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment : .center){
                LoginScreenTitleView(text: "Log In")
                TextfieldsView(field:"Username", text: $username)
                TextfieldsView(field:"Password", text: $password)
                Button(action:{
                    login(username: username, password: password) { loginInfo in
                        if (loginInfo.token != "No Token Found"){
                            let tokens : LoginInfo = loginInfo
                            token = tokens.token
                            polygonToken = tokens.polygonToken
                            splashScreenIsShowing = false
                        } else {
                            notExist = true
                        }
                    }
                    }){
                    RoundRectTextViewFilled(text: "Log In")
                }
                //TODO: make this message more specific, this will involve work w/ backend
                .alert("Username or password doesn't exist",
                       isPresented: $notExist,
                       presenting: username ) { username in
                label:do {
                    Text("The username" + username + "Does not exist or the password is incorrect" )
                }
                    Button("Ok"){
                        notExist = false
                    }
                    
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(username: Binding.constant(""), password: Binding.constant(""), token: Binding.constant(""), polygonToken: Binding.constant(""), splashScreenIsShowing: Binding.constant(true) )
    }
}
