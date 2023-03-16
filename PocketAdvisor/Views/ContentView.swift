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
    @State private var username : String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack{
            if (splashScreenIsShowing == true){
                SplashscreenView(splashScreenIsShowing: $splashScreenIsShowing, username: $username, password: $password)
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
