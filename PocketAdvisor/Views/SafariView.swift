//
//  LoginView.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 3/6/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}

struct SafariSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SafariView(url :URL(string:"https://duckduckgo.com")!)
    }
}
