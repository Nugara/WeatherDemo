//
//  LocationWeatherViewControllerTests.swift
//  WeatherDemoTests
//
//  Created by Giuseppe Nugara on 16/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import XCTest
@testable import WeatherDemo

class LocationWeatherViewControllerTests: XCTestCase {
    
    var controller: LocationWeatherViewController!
    var serviceStub: LocationWeatherServiceStub!
    
    override func setUp() {
        super.setUp()
        controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LocationWeather") as! LocationWeatherViewController
        serviceStub = LocationWeatherServiceStub()
        controller.locationWeatherService = serviceStub
    }
    
    override func tearDown() {
        serviceStub = nil
        controller = nil
        super.tearDown()
    }
    
    func test_GivenAForecast_WhenViewDidLoad_ThenUIFormFilled() {
        let location = Location(areaName: "Milan", country: "", region: "")
        controller.location = location
        let forecastStub = ForecastStubFactory.makeForecastStub()
        serviceStub.forecastFetchedStub = forecastStub
        
        controller.loadViewIfNeeded()
        
        XCTAssertEqual(controller.cityLabel.text, location.areaName)
        XCTAssertEqual(controller.weatherDescLabel.text, forecastStub.currentCondition.weatherDesc)
        XCTAssertEqual(controller.table.numberOfRows(inSection: 0), 1)
    }
}
