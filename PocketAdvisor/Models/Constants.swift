//
//  Constants.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 2/24/23.
//

import Foundation
import UIKit

enum Constants{
    enum Shapes {
        public static let circleViewDiameter = CGFloat(54.0)
        public static let bottomCircleViewDiameter = CGFloat(52.0)
        public static let RoundedRectViewWidth = CGFloat(120.0)
        public static let RoundedRectViewHeight = CGFloat(47.0)
        public static let RoundedRectCornerRadius = CGFloat(60.0)
        public static let RoundedRectLoginViewWidth = CGFloat(150.0)
        public static let RoundedRectLoginViewHeight = CGFloat(54.0)
        public static let RoundedRectLoginViewCornerRadius = CGFloat(20.0)
        public static let panelRoundedRectWidth = CGFloat(390)
        public static let panelRoundedRectHeight = CGFloat(210)
        public static let panelRoundedRectCornerRadius = CGFloat(20.0)
        public static let strokeWidth = CGFloat(1.0)
        public static let logoWidth = CGFloat(164.0)
        public static let logoHeight = CGFloat(100.0)
        public static let textFieldWidth = CGFloat(322.0)
        public static let textFieldHeight = CGFloat(51.0)
    }
    
    enum Graphs {
        public static let graphHeight = CGFloat(556)
        public static let graphWidth = CGFloat(390)
    }
    
    enum Alpaca {
        public static let client = "c2dc99c563f2b980bdb3895065b25c38"
    }
    
    enum Flask {
        public static let uri = "http://127.0.0.1:5000"
    }
}
