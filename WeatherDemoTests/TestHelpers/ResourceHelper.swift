//
//  ResourceHelper.swift
//  WeatherDemoTests
//
//  Created by Giuseppe Nugara on 16/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import Foundation

class ResourseHelper {
    
    func givenLocationSearchBase64Response() -> String {
        let bundle = Bundle(for: type(of: self))
        let path = bundle.path(forResource: "locationSearchBase64", ofType: "")!
        return try! String(contentsOfFile: path, encoding: .utf8)
    }
    
    func givenForecastBase64Response() -> String {
        let bundle = Bundle(for: type(of: self))
        let path = bundle.path(forResource: "forecasthBase64", ofType: "")!
        return try! String(contentsOfFile: path, encoding: .utf8)
    }
}
