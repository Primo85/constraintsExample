//
//  AppDelegate.swift
//  ConstraintsExample
//
//  Created by Przemyslaw Biskup on 20/11/2018.
//  Copyright © 2018 Przemyslaw Biskup. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = FirstViewController()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }
}

