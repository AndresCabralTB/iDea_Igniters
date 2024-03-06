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

                    Text("Choose Your Role!")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.vertical, 20)
                    Spacer()

                    Text("Begin your experience by choosing a role")
                        .font(.title3)
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height * 0.15 )
                .background(.ultraThinMaterial)
                
                    

                NavigationLink(destination: SignUpForm(viewTitle: "Donor")) {
                    
                    userSelection(text: "Donor", image: Image(systemName: "app.gift.fill")
                                  , myColor: Color.donor, description: "Take the step to become a donor and share the abundance in your life with those who need it most.")
                }
                

                NavigationLink(destination: SignUpForm(viewTitle: "Recipient")) {
                    
                    userSelection(text: "Recipient", image: Image(systemName: "heart.fill")
                                  , myColor: Color.recipent, description: "Become a recipient if times are tough, and receive donations from people who wish to help")
                    
                }
                
                NavigationLink(destination: SignUpForm(viewTitle: "Choose Later")) {
                    
                    userSelection(text: "Choose Later", image: Image(systemName: "clock.fill")
                                  , myColor: Color.newGreen, description: "Become a recipient if times are tough, and receive donations from people who wish to help")
                    
                }
                Spacer()
            }
            .background(Image("selectionBackground")
                .resizable()
                .scaledToFill()
                .blur(radius: 5.0)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                 
            )
            
    }
    
}

func userSelection(text: String, image: Image, myColor: Color, description: String) -> some View {
    VStack(alignment: .leading){
        HStack{
            Spacer()
            
            image
                .resizable()
                .frame(width: 80, height: 80)
                .padding(.all, 5)
            
            Spacer()
            
            VStack(alignment: .leading){
                Text(text)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.black)
                    .padding(.bottom, 10)


                
                Text(description)
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
    .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.22)
        .background(myColor)
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
    
}


#Preview {
    SplashScreen()
}
