//
//  LocationSearchServiceStub.swift
//  WeatherDemoTests
//
//  Created by Giuseppe Nugara on 16/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import Foundation
@testable import WeatherDemo

class LocationSearchServiceStub: LocationSearchServiceProtocol {
    var locationsStub = [Location]()
    
    func fetch(querySearch: String, success: @escaping ([Location]) -> (), failure: @escaping (LocationSearchError) -> ()) {
        
        success(locationsStub)
    }
}
