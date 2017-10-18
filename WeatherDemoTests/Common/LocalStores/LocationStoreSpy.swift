//
//  LocationStoreSpy.swift
//  WeatherDemoTests
//
//  Created by Giuseppe Nugara on 17/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import Foundation
@testable import WeatherDemo

class LocationStoreSpy: LocationLocalStore {
    
    var lastLocationSavedSpy: Location?
    
    func fetch() -> [Location] {
        return []
    }
    
    func save(location: Location) -> Bool {
        lastLocationSavedSpy = location
        return true
    }
}
