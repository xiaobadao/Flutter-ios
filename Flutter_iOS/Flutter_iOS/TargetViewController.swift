//
//  TargetViewController.swift
//  Flutter_iOS
//
//  Created by ww on 2019/11/14.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import Flutter
class TargetViewController: UIViewController ,FlutterStreamHandler{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    @IBAction func pushFlutter(_ sender: Any) {
        let flutterVC = FlutterViewController.init()
        flutterVC.setInitialRoute("home")
        let channelName = "com.pages.your/native_post"
        let eventChanel = FlutterEventChannel.init(name: channelName, binaryMessenger: flutterVC.binaryMessenger)
        eventChanel.setStreamHandler(self)
        
        self.present(flutterVC, animated: false, completion: nil)
        
    }
    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        events("ios post message to flutter")
        return nil
    }
    
    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        return nil
    }
}
