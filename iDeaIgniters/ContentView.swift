//
//  ContentView.swift
//  iDeaIgniters
//
//  Created by Andres Cabral on 29/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            NavigationLink(destination: LogIn(), label: {
                Text("Back")
            })
        }
        .padding()
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SplashScreen()
}
