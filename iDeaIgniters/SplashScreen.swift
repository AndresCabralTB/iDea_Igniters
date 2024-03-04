//
//  SplashScreen.swift
//  iDeaIgniters
//
//  Created by Andres Cabral on 01/03/24.
//

import SwiftUI

struct SplashScreen: View {
    
    @State var isActive: Bool = false
    
    
    var body: some View {
        ZStack{
            if self.isActive{
                LogIn()
            } else{
                VStack{
                    Text("iDea Igniters")
                        .font(.system(size: 40.0).bold())
                    
                    Text("Battling Fast Fashion")
                }
            }
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
        
    }
}

#Preview {
    SplashScreen()
}
