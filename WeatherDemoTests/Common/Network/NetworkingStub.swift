//
//  NetworkingStub.swift
//  WeatherDemoTests
//
//  Created by Giuseppe Nugara on 16/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import Foundation
@testable import WeatherDemo

class NetworkingStub: Networking {
    
    var dataStub: Data?
    var errorStub: NetworkingError?
    var endpoint: String?
    
    func httpGet(endpoint: String, success: @escaping (Data?) -> (), failure: @escaping (NetworkingError) -> ()) {
        
        self.endpoint = endpoint
        
        if errorStub != nil {
            failure(errorStub!)
        } else {
            success(dataStub)
        }
    }
}
