//
//  TextfieldsView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 3/12/23.
//

import SwiftUI

struct TextfieldsView: View {
    
    let field: String
    @Binding var text: String
    
    var body: some View {
        TextField(field , text: $text)
            .frame(width:Constants.Shapes.textFieldWidth, height: Constants.Shapes.textFieldHeight)
            .textFieldStyle(.roundedBorder)
    }
}

struct TextfieldsView_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldsView(field: "username", text: Binding.constant("username"))
    }
}
