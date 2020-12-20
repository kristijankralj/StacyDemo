//
//  StacyDemoApp.swift
//  StacyDemo
//
//  Created by Kristijan Kralj on 27/11/2020.
//

import SwiftUI
import Firebase

@main
struct StacyDemoApp: App {
  
  init() {
    FirebaseApp.configure()
  }
  
    var body: some Scene {
        WindowGroup {
            OnboardingView()
        }
    }
}
