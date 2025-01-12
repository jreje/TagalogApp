//
//  TagalogAppApp.swift
//  TagalogApp
//
//  Created by Julianne Rejesus  on 12/13/24.
//

import SwiftUI

@main
struct TagalogAppApp: App {
    init() {
            Styles.configureNavigationBarAppearance() // Apply navigation bar styling
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
