//
//  AppDelegate.swift
//  DependencyInjection-Sample
//
//  Created by Kazunori Aoki on 2021/06/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let someService = SomeService.shared
        
        /* With storyboards */
        if let viewController = window?.rootViewController as? ViewController {
            viewController.someService = someService
        }
        
//        let viewController = ViewController(someService: someService)
//        let window = UIWindow(frame: UIScreen.main.bounds)
//        window.rootViewController = viewController
//        window.makeKeyAndVisible()
//        self.window = window
        
        return true
    }
}

