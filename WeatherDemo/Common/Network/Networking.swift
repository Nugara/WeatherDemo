//
//  Networking.swift
//  WeatherDemo
//
//  Created by Giuseppe Nugara on 16/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import Foundation

enum NetworkingError: Error {
    case generic
    case status(code: Int)
    case invalidEndpoint
}

protocol Networking {
    func httpGet(endpoint: String, success: @escaping (Data?) -> (), failure: @escaping (NetworkingError) -> ())
}
