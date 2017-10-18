//
//  LocationLocalStore.swift
//  WeatherDemo
//
//  Created by Giuseppe Nugara on 16/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import Foundation

protocol LocationLocalStore {
    
    /// @return the list of all locations saved locally
    func fetch() -> [Location]
    
    /// @return true if save was successful, false otherwise
    func save(location: Location) -> Bool
}
