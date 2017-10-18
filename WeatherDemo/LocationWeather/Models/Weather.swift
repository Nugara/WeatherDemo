//
//  Weather.swift
//  WeatherDemo
//
//  Created by Giuseppe Nugara on 16/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import Foundation

/// The weather forecast of a day
struct Weather {
    let maxtempC: String
    let mintempC: String
    let date: String
    let hourly : [Hourly]
}
