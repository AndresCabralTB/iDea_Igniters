//
//  iDeaIgnitersApp.swift
//  iDeaIgniters
//
//  Created by Andres Cabral on 29/02/24.
//

import SwiftUI
import RealmSwift

let realApp = RealmSwift.App(id: "application-0-juchh")

@main
struct iDeaIgnitersApp: SwiftUI.App {
    var body: some Scene {
        WindowGroup {
            SplashScreen()
        }
    }
}
