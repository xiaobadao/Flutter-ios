//
//  ViewController.swift
//  Flutter_iOS
//
//  Created by ww on 2019/11/11.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import Flutter
class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func goMyflutter(_ sender: Any) {
        let flutterVC = FlutterViewController.init()
        flutterVC.setInitialRoute("myApp")
        
        let channelName = "com.pages.your/native_get"
        let flutterChanel  = FlutterMethodChannel.init(name: channelName, binaryMessenger: flutterVC.binaryMessenger)
        flutterChanel.setMethodCallHandler { (methodCall, result) in
            
            if(methodCall.method == "iOSFlutter"){
                print("iOSFlutter")
                let targetVC = TargetViewController.init()
                
                flutterVC.present(targetVC, animated: false, completion: nil)
                
            }
            if(methodCall.method == "iOSFlutter1"){
                print("iOSFlutter1")
                print(methodCall.method)
            }
            if(methodCall.method == "iOSFlutter2"){
                print("iOSFlutter2")
                result("返回给flutter的内容")
            }
            
        }
//        flutterVC.modalPresentationStyle = .fullScreen
        self.present(flutterVC, animated: false, completion: nil)
    }
    
}
