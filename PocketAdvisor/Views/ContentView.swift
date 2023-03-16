//
//  ContentView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 2/23/23.
//

import SwiftUI

struct ContentView: View {
    @State var splashScreenIsShowing = true
    @State var stockScreenIsShowing = false
    @State private var token : String = ""
    @State private var polygonToken: String = ""
    
    var body: some View {
        ZStack{
            if (splashScreenIsShowing == true){
                SplashscreenView(splashScreenIsShowing: $splashScreenIsShowing, token: $token, polygonToken: $polygonToken)
            }
            else {
                MainScreenView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
