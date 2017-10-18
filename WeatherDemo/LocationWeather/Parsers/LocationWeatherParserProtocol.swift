//
//  LocationWeatherParserProtocol.swift
//  WeatherDemo
//
//  Created by Giuseppe Nugara on 16/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import Foundation

protocol LocationWeatherParserProtocol {
    func parse(data: Data?) -> Forecast?
}
