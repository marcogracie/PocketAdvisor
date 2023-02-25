//
//  ContentView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 2/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @Binding var name: String
    @Binding var ticker: String
    @Binding var change: Float
    @Binding var blurb: String
    
    var body: some View {
        ZStack{
            BackgroundView()
            ForegroundView(name: $name, ticker: $ticker, change: $change, blurb: $blurb)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(name:Binding.constant("Joe Capital"), ticker: Binding.constant("JOE"), change: Binding.constant(17.0), blurb: Binding.constant("Joe Capital Engages in the sale and creation of derivatives in the health science sector."))
    }
}
