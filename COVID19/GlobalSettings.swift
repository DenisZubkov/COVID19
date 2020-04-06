//
//  GlobalSettings.swift
//  COVID19
//
//  Created by Dennis Zubkoff on 06.04.2020.
//  Copyright © 2020 Denis Zubkov. All rights reserved.
//

import Foundation

class GlobalSettings {
    let novelCOVIDBaseURL = URL(string: "https://corona.lmao.ninja/")!
    let scheme = "https"
    let host = "corona.lmao.ninja"
    let server = "/"
    
    func getUrlComponents(route: String) -> URLComponents {
        var urlComponents = URLComponents()
        urlComponents.scheme = scheme
        urlComponents.host = host
        urlComponents.path = server + route
        return urlComponents
    }
}
