//
//  AppDelegate.swift
//  WorkoutApp
//
//  Created by Ryan Hill on 18/06/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
        //declare new window as the root view controller
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: WorkoutVC())
        window?.makeKeyAndVisible()
        
        return true
    }




}

