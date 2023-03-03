//
//  ChartView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 2/26/23.
//

import SwiftUI
import Charts

struct ChartView: View {
    
    @State var config : ChartConfig
    
    let data : [StockPrice]
    let color : Color
    
    var body: some View {
        Chart (data) { datum in
                LineMark(x: .value("Time", datum.time), y: .value("Price", datum.price))
        }
        .foregroundColor(color)
        .chartXScale(domain: 0...2400)
        .chartYAxis(.hidden)
        .chartXAxis(.hidden)
        .frame(width: Constants.Graphs.graphWidth, height: Constants.Graphs.graphHeight)
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        
       let fakeStock: [StockPrice] = [StockPrice(time: 1000, price: 57.9),StockPrice(time: 1100, price: 56.9), StockPrice(time: 1200, price:79 ), StockPrice(time: 1300, price: 50)]
        ChartView(config: ChartConfig(),data: fakeStock, color: Color("TextGreen"))
    }
}
