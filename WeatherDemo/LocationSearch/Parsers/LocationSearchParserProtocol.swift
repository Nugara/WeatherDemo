//
//  LocationSearchParserProtocol.swift
//  WeatherDemo
//
//  Created by Giuseppe Nugara on 16/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import Foundation

protocol LocationSearchParserProtocol {
    func parse(data: Data?) -> [Location]?
}
