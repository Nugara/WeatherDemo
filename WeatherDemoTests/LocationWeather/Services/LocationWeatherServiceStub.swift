//
//  LocationWeatherServiceStub.swift
//  WeatherDemoTests
//
//  Created by Giuseppe Nugara on 16/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import Foundation
@testable import WeatherDemo

class LocationWeatherServiceStub: LocationWeatherServiceProtocol {
    var forecastFetchedStub: Forecast?
    
    func fetch(querySearch: String, success: @escaping (Forecast) -> (), failure: @escaping (LocationWeatherError) -> ()) {
        
        if let forecast = forecastFetchedStub {
            success(forecast)
        }
    }
}
