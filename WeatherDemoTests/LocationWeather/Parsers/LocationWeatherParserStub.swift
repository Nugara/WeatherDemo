//
//  LocationWeatherParserStub.swift
//  WeatherDemoTests
//
//  Created by Giuseppe Nugara on 16/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import XCTest
@testable import WeatherDemo

class LocationWeatherParserStub: LocationWeatherParserProtocol {
    var forecastStub: Forecast?
    
    func parse(data: Data?) -> Forecast? {
        return forecastStub
    }
}
