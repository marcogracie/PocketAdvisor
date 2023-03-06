//
//  SplashscreenView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 3/6/23.
//

import SwiftUI

struct SplashscreenView: View {
    var body: some View {
        ZStack(){
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
                BottomButtonsView()
            }
        }
    }
}

struct BottomButtonsView: View {
    var body: some View {
        HStack(spacing: 14.0) {
            Button(action: {}){
                RoundRectTextViewFilled(text: "Login")
            }
            Button(action: {}){
                RoundRectTextViewFilled(text: "Sign-Up")
            }
        }
    }
}

struct SplashscreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashscreenView()
    }
}
