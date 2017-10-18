//
//  LocationWeatherServiceProtocol.swift
//  WeatherDemo
//
//  Created by Giuseppe Nugara on 16/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import Foundation

enum LocationWeatherError: Error {
    case generic
}

/// Used to get the detailed forecast for a specific area name
protocol LocationWeatherServiceProtocol {
    
    /// @param querySearch The area name (e.g. "Milan", "London", etc.)
    func fetch(querySearch: String, success: @escaping (Forecast) -> (), failure: @escaping (LocationWeatherError) -> ())
}
