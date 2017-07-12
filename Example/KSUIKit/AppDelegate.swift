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
        
        KSUITheme.appearance().fonts = ["Regular": "Roboto-Light",
                                        "Italic": "Palatino-Italic",
                                        "Bold": "Palatino-Bold",
                                        "BoldItalic": "Roboto-BoldItalic"]
        
        KSUITheme.appearance().colors = ["positive" : UIColor(rgb: 0x387ef5),
                                         "balanced" : UIColor(rgb: 0x33cd5f),
                                         "energized" : UIColor(rgb: 0xffc900),
                                         "assertive" : UIColor(rgb: 0xef473a)]
        
        UIApplication.shared.statusBarStyle = .lightContent
        let navBarFont = UIFont.init(name: "Palatino-Bold",size: 20)!
        UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName : navBarFont,
                                                            NSForegroundColorAttributeName : UIColor(rgb: 0xeeeeee)]
        UINavigationBar.appearance().tintColor = UIColor(rgb: 0xeeeeee)
        UINavigationBar.appearance().barTintColor = UIColor(rgb: 0x444444)
        
        return true
    }
}
