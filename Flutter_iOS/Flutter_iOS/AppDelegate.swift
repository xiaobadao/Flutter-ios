//
//  AppDelegate.swift
//  Flutter_iOS
//
//  Created by ww on 2019/11/11.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import Flutter
import FlutterPluginRegistrant
@UIApplicationMain

class AppDelegate: UIResponder,UIApplicationDelegate{

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        let rootVC = ViewController.init()
//        let flutterVc = FlutterViewController.init()
//        flutterVc.setInitialRoute("defaultRoute")
//        flutterVc.view.backgroundColor = .red
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = rootVC
        self.window?.makeKeyAndVisible()
        return true
    }
}
