//
//  ResourceFetcherProtocol.swift
//  WeatherDemo
//
//  Created by Giuseppe Nugara on 17/09/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import UIKit

enum ResourceFetcherError: Error {
    case generic
}

protocol ResourceFetcherProtocol {
    func fetchImage(from url: URL, success: @escaping (UIImage) -> (), failure: @escaping (ResourceFetcherError) -> ())
}
