//
//  lexiconaApp.swift
//  lexicona
//
//  Created by Noah Ortega on 9/23/24.
//

import SwiftUI
import SwiftData

@main
struct lexiconaApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            WelcomeView()
            //MainAppView()
            //ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
