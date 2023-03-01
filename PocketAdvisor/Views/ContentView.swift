//
//  ContentView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 2/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @Binding var stock : Stock
    
    var body: some View {
        ZStack{
            BackgroundView()
            ChartView(data: <#T##[StockPrice]#>, color: <#T##Color#>)
            ForegroundView(name: $stock.name, ticker: $stock.ticker, change: $stock.status, blurb: $stock.description)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
