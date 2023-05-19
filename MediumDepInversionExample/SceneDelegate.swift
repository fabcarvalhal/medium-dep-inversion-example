//
//  SceneDelegate.swift
//  MediumDepInversionExample
//
//  Created by Fabrício Silva Carvalhal on 19/05/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let rootViewController = ViewController()
        window.rootViewController = UINavigationController(rootViewController: rootViewController)
        
        self.window = window
        window.makeKeyAndVisible()
    }
}

