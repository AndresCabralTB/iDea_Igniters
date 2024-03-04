//
//  UserSelection.swift
//  iDeaIgniters
//
//  Created by Andres Cabral on 01/03/24.
//

import SwiftUI

struct LogIn: View {
    var body: some View {
        NavigationView{
            VStack{
                
                /*Text("iDea Igniters")
                 .font(.system(size: 20.0).bold())
                 .padding(.vertical, 20) */
                
                
    
                Spacer()
                Text("")
                    .font(.system(size: 40.0).bold())
                Spacer()

                HStack(spacing: 15){
                    
                    NavigationLink {
                        ContentView()
                    } label: {
                        Text("Log In")
                            .font(.system(size: 25.0).bold())
                            .foregroundStyle(Color.black)
                        
                            .frame(width: UIScreen.main.bounds.width / 2.2, height: UIScreen.main.bounds.height / 4)
                            .background(Color(.donor))
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.white, lineWidth: 4))
                        
                    }
                    NavigationLink {
                        UserSelection()
                    } label: {
                        Text("Sign Up")
                            .font(.system(size: 25.0).bold())
                            .foregroundStyle(Color.black)
                            .frame(width: UIScreen.main.bounds.width / 2.2, height: UIScreen.main.bounds.height / 4)
                            .background(Color(.recipent))
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.white, lineWidth: 4))
                    }
                }.padding(.all, 20)
                Spacer()
            }.background(Image("selectionBackground")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .mask(LinearGradient(gradient: Gradient(stops: [
                            .init(color: .black, location: 0),
                            .init(color: .clear, location: 1),
                            .init(color: .black, location: 1),
                            .init(color: .clear, location: 1)
                        ]), startPoint: .bottom, endPoint: .top))
            )
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SplashScreen()
}
