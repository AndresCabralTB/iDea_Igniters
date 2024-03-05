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
                    
                    VStack{
                        Text("Welcome Back")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.black)
                        
                        TextField("Username", text: $username)
                            .padding(.horizontal, 10)
                            .frame(width: UIScreen.main.bounds.width * 0.75, height: 40)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 20)) .background(
                                RoundedRectangle(cornerRadius: 20) // stroke border
                                    .stroke(Color.black, lineWidth: 1)
                            )
                        
                        
                        TextField("Password", text: $password)
                            .padding(.horizontal, 10)
                            .frame(width: UIScreen.main.bounds.width * 0.75, height: 40)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 20.0)) .background(
                                RoundedRectangle(cornerRadius: 20) // stroke border
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
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 1))
                        }
                    }
                    
                    
                    
                    HStack{
                        
                        Text("Dont have an account yet?")
                        NavigationLink {
                            UserSelection()
                        } label: {
                            Text("Sign Up")
                                .underline()
                        }
                    }.padding(.all, 20)
                    
                }
                .padding(.all, 10)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 20.0))
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black.opacity(10.0), lineWidth: 1))
                
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
