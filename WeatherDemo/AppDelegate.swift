//
//  AppDelegate.swift
//  WeatherDemo
//
//  Created by Giuseppe Nugara on 18/10/2017.
//  Copyright © 2017 Nugara. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    lazy var coreDataStack = CoreDataStack(modelName: "WeatherDemo", storeType: .sqlite)
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        return true
    }
}
