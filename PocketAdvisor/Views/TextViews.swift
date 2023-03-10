//
//  TextViews.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 2/24/23.
//

import SwiftUI

struct StockNameView: View {
    
    var text: String
    var direction: Bool
    
    var body: some View {
        
        let color = direction == true ? Color("TextGreen") : Color("TextRed")
        
        Text(text)
            .font(.title)
            .bold()
            .foregroundColor(color)
    }
}

struct StockTickerView: View {
    
    var text: String
    
    var body: some View {
        
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .kerning(1.5)
            .foregroundColor(Color("StandardTextColor"))
    }
}

struct StockChangeView: View {
    
    var text: String
    var direction: Bool
    
    var body: some View {
        
        let color = direction == true ? Color("TextGreen") : Color("TextRed")
        let sign = direction == true ? "+" : "-"
        
        Text(sign + " " + text + "%")
            .font(.largeTitle)
            .bold()
            .foregroundColor(color)
    }
}

struct IndicatorTextView: View {
    
    var text: String

    var body: some View {
        
        Text(text)
            .font(.title)
            .fontWeight(.medium)
            .kerning(1.5)
            .foregroundColor(Color("IndicatorTextColor"))
    }
}

struct BlurbTextView: View {
    
    var text: String

    var body: some View {
        
        Text(text)
            .font(.subheadline)
            .foregroundColor(Color("StandardTextColor"))
    }
}

struct SplashscreenTextView: View {
    
    var text: String

    var body: some View {
        
        Text(text)
            .font(.largeTitle)
            .bold()
            .foregroundColor(Color("SplashscreenTitleColor"))
    }
}

struct LoginButtonsTextView: View {
    
    var text: String

    var body: some View {
        
        Text(text)
            .font(.title)
            .bold()
            .foregroundColor(Color("StandardTextColor"))
    }
}

struct LoginScreenTitleView: View {
    
    var text: String

    var body: some View {
        
        Text(text)
            .font(.system(size: 64))
            .bold()
            .foregroundColor(Color("SplashscreenTitleColor"))
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            StockNameView(text: "Joe Capital", direction: true )
            StockNameView(text: "Joe Capital", direction: false)
            StockTickerView(text: "JOE")
            StockChangeView(text: String(17.0), direction: true)
            StockChangeView(text: String(17.0), direction: false)
            IndicatorTextView(text: "MACD")
            BlurbTextView(text: "lololo")
            SplashscreenTextView(text: "Pocket Advisor")
            LoginButtonsTextView(text: "Login")
            LoginScreenTitleView(text: "Login")
        }.background(Color("BackgroundColor"))
    }
}
