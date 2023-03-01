//
//  Stock.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 2/28/23.
//

import Foundation

struct Stock {
   var name : String
   var ticker : String
   var data : StockPrice
   var status : Bool
   var description : String
    
    init(name: String, ticker: String, data: StockPrice, status: Bool, description: String) {
        self.name = name
        self.ticker = ticker
        self.data = data
        self.status = data.change()
        self.description = description
    }
}
