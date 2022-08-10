//
//  HearURApp.swift
//  HearUR
//
//  Created by Terry Koo on 2022/08/10.
//

import SwiftUI
import FirebaseCore

@main
struct HearURApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        print("[FirebaseApp.configure]")
        return true
    }
}
