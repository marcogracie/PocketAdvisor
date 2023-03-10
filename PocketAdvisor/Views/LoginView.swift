//
//  LoginView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 3/10/23.
//

import SwiftUI

struct LoginView: View {
    @State private var username : String = ""
    @State private var password: String = ""
    @State private var notExist: Bool = false
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("BackgroundColor"), Color("BackgroundGradientEnd")]), startPoint: .top, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment : .center){
                LoginScreenTitleView(text: "Log In")
                TextfieldsView(field:"Username", text: $username)
                TextfieldsView(field:"Password", text: $password)
                Button(action:{if (login(username: username, password: password).token != "NoTokenFound"){
                    
                    //TODO: Switch to main display with the token and polygon token
                } else {
                    notExist = true
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
        LoginView()
    }
}
