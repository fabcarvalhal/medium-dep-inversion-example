//
//  AppDelegate.swift
//  MediumDepInversionExample
//
//  Created by Fabrício Silva Carvalhal on 19/05/23.
//

import UIKit
import FrameworkA
import FrameworkB
import FirebaseCore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        
        
        return true
    }
    
    private func configureModules() {
        FrameworkA.Dependency.shared.setFactory(FrameworkAFactoryImplementation())
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
}

