//
//  FructusApp.swift
//  Fructus
//
//  Created by Hyun Shik Chung on 3/14/22.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }
        }
    }
}
