//
//  LocationSearchParserStub.swift
//  WeatherDemoTests
//
//  Created by Giuseppe Nugara on 16/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import Foundation
@testable import WeatherDemo

class LocationSearchParserStub: LocationSearchParserProtocol {
    var locationsStub: [Location]?
    
    func parse(data: Data?) -> [Location]? {
        return locationsStub
    }
}
