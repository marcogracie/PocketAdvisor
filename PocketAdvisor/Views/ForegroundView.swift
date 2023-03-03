//
//  ForegroundView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 2/24/23.
//

import SwiftUI

struct ForegroundView: View {
    
    @State var stock : Stock
    @Binding var config : ChartConfig
    
    var body: some View {
        VStack{
            Spacer()
            BottomView(stock: stock)
        }
        .ignoresSafeArea()
    }
}

struct BottomView: View {
    
    @State var stock : Stock
    
    var body: some View {
        VStack{
            TickerView(name: stock.name, ticker: stock.ticker, change: stock.change)
            IndicatorView()
            BlurbView(blurb: stock.description)
        }
        .background(Color("RoundRectFillColor"))
        .frame(width: Constants.Shapes.panelRoundedRectWidth, height: Constants.Shapes.panelRoundedRectHeight)
        .cornerRadius(Constants.Shapes.panelRoundedRectCornerRadius, corners: [.topLeft,.topRight])
    }
}

struct TickerView: View {
    
    @State var name: String
    @State var ticker: String
    @State var change: Float
    
    var body: some View {
        
        let direction = change >= 0 ? true : false
        
        HStack{
            VStack(alignment: .leading) {
               StockNameView(text: name, direction: direction)
                StockTickerView(text: ticker)
            }
            Spacer()
            StockChangeView(text: String(change), direction: direction)
        }
        .padding()
    }
}

struct IndicatorView: View {
    
    var body: some View {
        
        HStack{
            Button(action: {}){
                RoundRectTextViewStroked(text: "MACD")
            }
            Spacer()
            Button(action: {}){
                RoundRectTextViewStroked(text: "RSI")
            }
            Spacer()
            Button(action:{}){
                RoundRectTextViewStroked(text: "MA")
            }
        }
        .padding([.leading, .trailing])
    }
}

struct BlurbView: View {
    
    @State var blurb: String
    
    var body: some View {
        
        HStack{
           BlurbTextView(text: blurb)
            CircleImageViewStroked(systemName: "graduationcap.fill")
        }
        .padding([.leading, .trailing])
    }
}

struct ForegroundView_Previews: PreviewProvider {
    static var previews: some View {
        
        let testStock = Stock(name: "Joe capital", ticker: "JOE", data: [StockPrice(time: 1000, price: 57.9),StockPrice(time: 1100, price: 56.9), StockPrice(time: 1200, price:79 ), StockPrice(time: 1300, price: 50)], change: 7.3, description: "Joe Capital Engages in the sale and creation of derivatives in the health science sector.")
        
        ForegroundView(stock: testStock, config: Binding.constant(ChartConfig()))
    }
}
