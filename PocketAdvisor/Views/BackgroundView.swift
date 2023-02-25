//
//  BackgroundView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 2/24/23.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        VStack{
            TopView()
            Spacer()
        }
        .padding()
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("BackgroundColor"), Color("BackgroundGradientEnd")]), startPoint: .top, endPoint: .bottomTrailing)
            
        )
    }
}

struct TopView: View {
    var body: some View {
        HStack{
            Button(action:{}){
                CircleImageViewFilled(systemName: "arrow.backward")
            }
            Spacer()
            Button(action:{}){
                CircleImageViewFilled(systemName: "magnifyingglass")
            }
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
