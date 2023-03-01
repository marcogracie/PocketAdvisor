//
//  StockPricing.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 2/26/23.
//

import Foundation

struct StockPrice: Identifiable {
    var time: Int
    var price: Double
    var id = UUID()
    
    func change() -> Bool {
        return true
    }
}

