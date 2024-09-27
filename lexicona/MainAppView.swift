//
//  MainAppView.swift
//  lexicona
//
//  Created by Noah Ortega on 9/24/24.
//

import SwiftUI

struct MainAppView: View {
    var body: some View {
        NavigationView {
            VStack {
                if !UserDefaults.standard.bool(forKey: "hasSeenWelcome") {
                    Text("Welcome! (First time only)")
                } else {
                    Text("Welcome Back!").padding()
                }
                Text("Main App View").font(.largeTitle)
                NavigationLink(destination: ContentView(), label: {
                    Text("Go to ContentView")
                }).padding()
            }
        }
    }
}


#Preview {
    MainAppView()
}
