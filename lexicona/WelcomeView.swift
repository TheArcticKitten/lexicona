//
//  WelcomeView.swift
//  lexicona
//
//  Created by Noah Ortega on 9/24/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            
            VStack {
                //Color.blue.padding().opacity(0.13)
                Image(.welcomeIcon).resizable().scaledToFit().frame(width: 200, height: 200)
                Text("Welcome")
                    .font(.largeTitle)
                Button("Get Started") {
                    UserDefaults.standard.set(true, forKey: "hasSeenWelcome")
                    
                }.font(.title).padding()
                
                NavigationLink(destination: MainAppView(), label: {
                    Text("Go to MainAppView")
                }).padding()
            }
            .padding()
            

        }
    }
}

#Preview {
    WelcomeView()
}
