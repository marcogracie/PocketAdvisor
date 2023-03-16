//
//  SplashscreenView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 3/6/23.
//

import SwiftUI

struct SplashscreenView: View {
    
    @Binding var splashScreenIsShowing: Bool
    @Binding var token: String
    @Binding var polygonToken: String
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("BackgroundColor"), Color("BackgroundGradientEnd")]), startPoint: .top, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack{
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: Constants.Shapes.logoWidth, height: Constants.Shapes.logoHeight)
                    SplashscreenTextView(text: "Pocket Advisor")
                }
                .padding([.leading, .trailing], 24)
                BottomButtonsView(splashScreenIsShowing: $splashScreenIsShowing, token: $token, polygonToken: $polygonToken)
            }
        }
    }
}

struct BottomButtonsView: View {
    
    @Binding var splashScreenIsShowing: Bool
    @Binding var token: String
    @Binding var polygonToken: String
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showSafari = false
    @State private var showLogin = false
    let loginurlString =  "https://app.alpaca.markets/oauth/authorize?response_type=code&client_id=" + Constants.Alpaca.client + "&redirect_uri=" + Constants.Flask.uri + "/main&state=8e02c9c6a3484fadaaf841fb1df290e1&scope=account:write%20trading"
    
    var body: some View {
        HStack(spacing: 14.0) {
            Button(action: {self.showLogin = true}){
                RoundRectTextViewFilled(text: "Login")
            }
            .sheet(isPresented: $showLogin){
                LoginView(username: $username, password: $password, token: $token, polygonToken: $polygonToken, splashScreenIsShowing: $splashScreenIsShowing)
            }
            Button(action: {self.showSafari = true}){
                RoundRectTextViewFilled(text: "Sign-Up")
            }
            .sheet(isPresented: $showSafari){
                SafariView(url:URL(string: self.loginurlString)!)
            }
        }
    }
}

struct SplashscreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashscreenView(splashScreenIsShowing: Binding.constant(true),token: Binding.constant(""), polygonToken: Binding.constant("") )
    }
}
