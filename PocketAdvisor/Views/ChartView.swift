//
//  ChartView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 2/26/23.
//

import SwiftUI
import Charts

struct ChartView: View {
    
    let data : [StockPrice]
    
    var body: some View {
        Chart {
            ForEach(data) { datum in
                LineMark(x: .value("Time", datum.time), y: .value("Price", datum.price))
            }
        }
        .frame(width: Constants.Graphs.graphWidth, height: Constants.Graphs.graphHeight)
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        
        let fakeStock: [StockPrice] = [StockPrice(time: 1000, price: 57.9),StockPrice(time: 1100, price: 56.9), StockPrice(time: 1200, price:79 ), StockPrice(time: 1300, price: 50)]
        ChartView(data: fakeStock)
    }
}
