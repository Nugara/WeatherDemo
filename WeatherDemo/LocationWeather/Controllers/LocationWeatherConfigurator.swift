//
//  WeatherDetailLocationConfigurator.swift
//  WeatherDemo
//
//  Created by Giuseppe Nugara on 16/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import Foundation

/// Used to inject dependencies into the corresponding controller
class LocationWeatherConfigurator {
    
    var controller : LocationWeatherViewController?
    
    func configure(viewController: LocationWeatherViewController) {
        
        self.controller = viewController
        setupLocationWeather()
    }
    
    func setupLocationWeather() {
        
        let networking = URLSessionNetworking()
        let locationWeatherParserProtocol = LocationWeatherParser()
        
        let locationWeatherService = LocationWeatherService(baseURL: Configuration.baseURL, accessKey: Configuration.accessKey, networking: networking, locationWeatherParserProtocol: locationWeatherParserProtocol)
        let resourceFetcher = ResourceFetcher(networking: networking)
        
        controller!.locationWeatherService = locationWeatherService
        controller!.resourceFetcher = resourceFetcher
    }
}
