//
//  ShapeViews.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 2/24/23.
//

import SwiftUI

struct CircleImageViewFilled: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("FilledCircleTextColor"))
            .frame(width: Constants.Shapes.circleViewDiameter, height: Constants.Shapes.circleViewDiameter)
            .background{
                Circle()
                    .fill(Color("CircleFillColor"))
            }
    }
}

struct CircleImageViewStroked: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("StrokedCircleTextColor"))
            .frame(width: Constants.Shapes.bottomCircleViewDiameter, height: Constants.Shapes.bottomCircleViewDiameter)
            .overlay{
                Circle()
                    .strokeBorder(Color("CircleStrokeColor"), lineWidth: Constants.Shapes.strokeWidth)
            }
    }
}

struct RoundRectTextViewStroked: View {
    
    var text: String
    
    var body: some View {
            IndicatorTextView(text: text)
            .frame(width: Constants.Shapes.RoundedRectViewWidth, height: Constants.Shapes.RoundedRectViewHeight)
            .overlay{
                RoundedRectangle(cornerRadius: Constants.Shapes.RoundedRectCornerRadius)
                    .stroke(lineWidth: Constants.Shapes.strokeWidth)
                    .foregroundColor(Color("RoundRectStrokeColor"))
                    
            }
    }
}

struct RoundRectTextViewFilled: View {
    
    var text: String
    
    var body: some View {
        LoginButtonsTextView(text: text)
            .frame(width: Constants.Shapes.RoundedRectLoginViewWidth, height: Constants.Shapes.RoundedRectLoginViewHeight)
            .background{
                RoundedRectangle(cornerRadius: Constants.Shapes.RoundedRectLoginViewCornerRadius)
                    .fill(Color("RoundRectFillColor"))
            }
    }
}


struct ShapeViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            CircleImageViewFilled(systemName: "arrow.backward")
            CircleImageViewStroked(systemName: "graduationcap.fill")
            RoundRectTextViewStroked(text: "MACD")
            RoundRectTextViewFilled(text: "Login")
        }
    }
}
