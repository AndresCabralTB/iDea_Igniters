//
//  ContentView.swift
//  iDeaIgniters
//
//  Created by Andres Cabral on 29/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
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
            .tabItem{
                Text("Home")
                Image(systemName: "house")
            }
            
            //Create the bottom tabs
            MapView()
                .tabItem(){
                    Text("Maps")
                    Image(systemName: "mappin.and.ellipse")
                }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SplashScreen()
}
