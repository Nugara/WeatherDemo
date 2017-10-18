//
//  Forecast.swift
//  WeatherDemo
//
//  Created by Giuseppe Nugara on 16/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import Foundation

/// The weather forecast of an amount of days
/// and the detailed current conditions
struct Forecast {
    let weather: [Weather]
    let currentCondition: CurrentCondition
}
