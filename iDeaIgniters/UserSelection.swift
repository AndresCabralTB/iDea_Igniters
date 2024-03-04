//
//  UserSelection.swift
//  iDeaIgniters
//
//  Created by Andres Cabral on 01/03/24.
//

import SwiftUI

struct UserSelection: View {
    var body: some View {
            VStack{
                
                /*Text("iDea Igniters")
                 .font(.system(size: 20.0).bold())
                 .padding(.vertical, 20) */
                
                Text("Choose Your Role")
                    .font(.system(size: 25.0).bold())
                    .padding(.vertical, 20)
                
                Text("iDea Igniters aims to battle fast fashion by allowing donors to donate products such as clothes, electronics or food to the people in need")
                    .font(.system(size: 20.0))
                    .foregroundStyle(Color.black)
                    .frame(width: UIScreen.main.bounds.width / 1.5, height: UIScreen.main.bounds.height / 4)
                    .multilineTextAlignment(.center)
                
                HStack(spacing: 15){
                    
                    NavigationLink {
                        //ContentView()
                        SignUpForm(viewTitle: "Donor")

                    } label: {
                        Text("Donor")
                            .font(.system(size: 25.0).bold())
                            .foregroundStyle(Color.black)
                        
                            .frame(width: UIScreen.main.bounds.width / 2.2, height: UIScreen.main.bounds.height / 4)
                            .background(Color(.donor))
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.white, lineWidth: 4))
                        
                    }
                    NavigationLink {
                        SignUpForm(viewTitle: "Recipient")
                    } label: {
                        Text("Recipient")
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
        
    }
}

#Preview {
    UserSelection()
}
