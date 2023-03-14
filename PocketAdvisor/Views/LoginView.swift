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
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("BackgroundColor"), Color("BackgroundGradientEnd")]), startPoint: .top, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment : .center){
                LoginScreenTitleView(text: "Log In")
                TextfieldsView(field:"Username", text: $username)
                TextfieldsView(field:"Password", text: $password)
                Button(action:{}){
                    RoundRectTextViewFilled(text: "Log In")
                    // TODO: when the user clicks this, go to login func, then if there exists a token, pass it through and init a mainpage with that token.
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
