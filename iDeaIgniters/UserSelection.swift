//
//  UserSelection.swift
//  iDeaIgniters
//
//  Created by Andres Cabral on 01/03/24.
//

import SwiftUI

struct UserSelection: View {
    
    @State private var selectedUser: String = ""
    var body: some View {
        
            VStack{
                VStack{
                    
                    Text("Choose Your Role")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.vertical, 20)
                    
                    NavigationLink(destination: SignUpForm(viewTitle: "Donor")) {

                        Text("Donor")
                        .font(.system(size: 25.0).bold())
                        .foregroundStyle(Color.black)
                        .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.20)
                        .background(Color(.donor))
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.white, lineWidth: 4))
                    }
                    
                    NavigationLink(destination: SignUpForm(viewTitle: "Recipient")) {
                        
                        Text("Recipient")
                        .font(.system(size: 25.0).bold())
                        .foregroundStyle(Color.black)
                        .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.20)
                        .background(Color(.recipent))
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.white, lineWidth: 4))
                    }
                }
                }
                
            }
            
        }

#Preview {
    SplashScreen()
}
