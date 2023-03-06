//
//  SplashscreenView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 3/6/23.
//

import SwiftUI

struct SplashscreenView: View {
    var body: some View {
        VStack{
               Image("Logo")
                SplashscreenTextView(text: "Pocket Advisor")
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [Color("BackgroundColor"), Color("BackgroundGradientEnd")]), startPoint: .top, endPoint: .bottomTrailing))
        
    }
}

struct BottomButtonsView: View {
    var body: some View {
        HStack {
            
        }
    }
}

struct SplashscreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashscreenView()
    }
}
