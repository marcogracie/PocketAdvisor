//
//  ContentView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 2/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var stock = Stock(name: "Joe capital", ticker: "JOE", data: [StockPrice(time: 1000, price: 57.9),StockPrice(time: 1100, price: 56.9), StockPrice(time: 1200, price:79 ), StockPrice(time: 1300, price: 50)], change: 7.3, description: "Joe Capital Engages in the sale and creation of derivatives in the health science sector.")
    
    var body: some View {
        ZStack{
            BackgroundView()
            ChartView(data: stock.data, color: Color("TextGreen"))
            ForegroundView(name: $stock.name, ticker: $stock.ticker, change: $stock.change, blurb: $stock.description)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
