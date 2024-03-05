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
        VStack{
            ZStack{
                if self.isActive{
                    LogIn()
                } else{
                    VStack{

                        Spacer()

                        Text("iDea Igniters")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                        Text("Battling Fast Fashion")
                            .font(.body)
                            .multilineTextAlignment(.center)
                        
                        Spacer()

                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.recipent, .donor]), startPoint: .top, endPoint: .bottom)
                    )
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
}

#Preview {
    SplashScreen()
}
