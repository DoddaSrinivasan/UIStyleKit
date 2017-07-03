//
//  AppDelegate.swift
//  KSUIKit
//
//  Created by srinivasan.munna@gmail.com on 06/23/2017.
//  Copyright (c) 2017 srinivasan.munna@gmail.com. All rights reserved.
//

import UIKit
import KSUIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        KSUITheme.appearance().fonts = ["Regular": "Roboto-Light",
                                        "Italic": "Palatino-Italic",
                                        "Bold": "Palatino-Bold",
                                        "BoldItalic": "Roboto-BoldItalic"]
        
        return true
    }
}

