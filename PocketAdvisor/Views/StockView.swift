//
//  StockView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 3/15/23.
//

import SwiftUI

struct StockView: View {
    
    @State var stock = Stock(name: "Joe capital", ticker: "JOE", data: [StockPrice(time: 1000, price: 57.9),StockPrice(time: 1100, price: 56.9), StockPrice(time: 1200, price:79 ), StockPrice(time: 1300, price: 50)], change: 7.3, description: "Joe Capital Engages in the sale and creation of derivatives in the health science sector.")
    @State var chartConfig = ChartConfig()
    
    var body: some View {
        ZStack{
            BackgroundView()
            ChartView(config: chartConfig, data: stock.data, color: Color("TextGreen"))
            ForegroundView(stock: stock, config: $chartConfig)
        }
    }
}

struct StockView_Previews: PreviewProvider {
    static var previews: some View {
        StockView()
    }
}
