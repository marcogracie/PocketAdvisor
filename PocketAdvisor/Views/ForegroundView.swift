//
//  ForegroundView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 2/24/23.
//

import SwiftUI

struct ForegroundView: View {
    
    @Binding var name: String
    @Binding var ticker: String
    @Binding var change: Float
    @Binding var blurb: String
    
    var body: some View {
        VStack{
            Spacer()
            BottomView(name: $name, ticker: $ticker, change: $change, blurb: $blurb)
        }
        .ignoresSafeArea()
    }
}

struct BottomView: View {
    
    @Binding var name: String
    @Binding var ticker: String
    @Binding var change: Float
    @Binding var blurb: String
   
    
    
    var body: some View {
        VStack{
            TickerView(name: $name, ticker: $ticker, change: $change)
            IndicatorView()
            BlurbView(blurb: $blurb)
        }
        .background(Color("RoundRectFillColor"))
        .frame(width: Constants.Shapes.panelRoundedRectWidth, height: Constants.Shapes.panelRoundedRectHeight)
        .cornerRadius(Constants.Shapes.panelRoundedRectCornerRadius, corners: [.topLeft,.topRight])
    }
}

struct TickerView: View {
    
    @Binding var name: String
    @Binding var ticker: String
    @Binding var change: Float
    
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
    
    @Binding var blurb: String
    
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
        ForegroundView(name:Binding.constant("Joe Capital"), ticker: Binding.constant("JOE"), change: Binding.constant(17.0), blurb: Binding.constant("Joe Capital Engages in the sale and creation of derivatives in the health science sector."))
    }
}
