//
//  UserSelection.swift
//  iDeaIgniters
//
//  Created by Andres Cabral on 01/03/24.
//

import SwiftUI

struct LogIn: View {
    
    @State private var username : String  = ""
    @State private var password : String = ""
    
    var body: some View {
        
        NavigationView{
            VStack{
                Spacer()
                Text("iDea Igniters")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 50)
                
                VStack{
                    Text("Welcome Back!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.black)
                        .padding(.bottom, 20)
                    
                    
                    TextField("Username", text: $username)
                        .padding(.horizontal, 10)
                        .frame(width: UIScreen.main.bounds.width * 0.6, height: 40)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15)) .background(
                            RoundedRectangle(cornerRadius: 15) // stroke border
                                .stroke(Color.black, lineWidth: 1)
                        )
                    
                    
                    TextField("Password", text: $password)
                        .padding(.horizontal, 10)
                        .frame(width: UIScreen.main.bounds.width * 0.6, height: 40)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0)) .background(
                            RoundedRectangle(cornerRadius: 15) // stroke border
                                .stroke(Color.black, lineWidth: 1)
                        ).padding(.bottom, 15)
                    
                    NavigationLink {
                        ContentView()
                    } label: {
                        Text("Log In")
                            .font(.system(size: 20.0).bold())
                            .foregroundStyle(Color.black)
                        
                            .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.05)
                            .background(Color(.donor))
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 1))
                    }.padding(.bottom, 10)
                    
                    HStack{
                        
                        Text("Dont have an account yet?")
                        NavigationLink {
                            UserSelection()
                        } label: {
                            Text("Sign Up")
                                .underline()
                        }
                    }
                    
                }
                .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.4)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 40.0))
                .ignoresSafeArea(.all)
                
                Spacer()
                
            }.background(Image("selectionBackground")
                .resizable()
                .scaledToFill()
                .blur(radius: 5.0)
                .ignoresSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                 .mask(LinearGradient(gradient: Gradient(stops: [
                     .init(color: .black, location: 0),
                     .init(color: .clear, location: 1)
                 ]), startPoint: .bottom, endPoint: .top))
                 
            )
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SplashScreen()
}
