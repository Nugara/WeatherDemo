//
//  LocationLocalStoreStub.swift
//  WeatherDemoTests
//
//  Created by Giuseppe Nugara on 17/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import Foundation
@testable import WeatherDemo

class LocationLocalStoreStub: LocationLocalStore {
    var locationsToFetchStub = [Location]()
    
    func fetch() -> [Location] {
        return locationsToFetchStub
    }
    
    func save(location: Location) -> Bool {
        return true
    }
}
