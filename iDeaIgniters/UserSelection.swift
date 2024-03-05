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
                    
                    userSelection(text: "Donor", image: Image(systemName: "app.gift.fill")
                                  , myColor: Color.donor)
                }
                
                NavigationLink(destination: SignUpForm(viewTitle: "Recipient")) {
                    
                    userSelection(text: "Recipient", image: Image(systemName: "hand.raised.app.fill")
                                  , myColor: Color.recipent)
                    
                }
            }
            Spacer()
        }
        
    }
    
}

func userSelection(text: String, image: Image, myColor: Color) -> some View {
    VStack(alignment: .leading){
        HStack{
            Spacer()
            
            image
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.20, height: UIScreen.main.bounds.height * 0.10)
                .padding(.all, 15)
            
            Spacer()
            
            VStack(alignment: .leading){
                Text(text)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.black)
                    .padding(.bottom, 10)


                
                Text("A donor has the capability of donating products to the people in need. ")
                    .foregroundStyle(Color.black)
                    .multilineTextAlignment(.leading)
                    .italic()
                    .padding(.bottom, 8)
                    .padding(.trailing, 10)
            }
            
            Spacer()
        }
        
    }
    .multilineTextAlignment(.leading)
    .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.20)
        .background(myColor)
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.white, lineWidth: 4))
    
}


#Preview {
    SplashScreen()
}
