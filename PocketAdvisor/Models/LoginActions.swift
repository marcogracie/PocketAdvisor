//
//  LoginActions.swift
//  PocketAdvisor
//
//  Created by Marco Gracie on 3/13/23.
//

import Foundation


struct LoginInfo {
    var token : String
    var polygonToken : String
}

func login(username: String, password: String, completion: @escaping (LoginInfo) -> Void) {
    let url = URL(string: Constants.Flask.uri + "/verifyUser?username=" + username + "&password=" + password)!
    var token : String?
    var polygonToken : String?
    
    let defaultSessionConfiguration = URLSessionConfiguration.default
    let defaultSession = URLSession(configuration: defaultSessionConfiguration)
    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = "GET"
    
    let dataTask = defaultSession.dataTask(with: urlRequest) {(data, response, error) in
        guard let data = data else { return }
        let response = String(data: data, encoding: .utf8)?.split(separator: "|")
        token = String(response![0])
        if ( response?.count == 2){
            polygonToken = String(response![1])
        } else {polygonToken = ""}
        let loginInfo = LoginInfo(token: token!, polygonToken: polygonToken!)
        completion(loginInfo)
    }
    dataTask.resume()
}
