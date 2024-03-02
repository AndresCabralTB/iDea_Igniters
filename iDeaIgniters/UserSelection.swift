//
//  UserSelection.swift
//  iDeaIgniters
//
//  Created by Andres Cabral on 01/03/24.
//

import SwiftUI

struct UserSelection: View {
    var body: some View {
        NavigationView{
            VStack{
                
            /*Text("iDea Igniters")
                    .font(.system(size: 20.0).bold())
                    .padding(.vertical, 20) */
                
                Text("Choose Your Role")
                    .font(.system(size: 25.0).bold())
                    .padding(.vertical, 20)
                
                Text("iDea Igniters aims to battle fast fashion by allowing donors to donate products such as clothes, electronics or food to the people in need")
                    .font(.system(size: 20.0))
                    .frame(width: UIScreen.main.bounds.width / 1.5, height: UIScreen.main.bounds.height / 4)
                    .multilineTextAlignment(.center)
                
                HStack{
                    
                    NavigationLink {
                        ContentView()
                    } label: {
                        Text("Donor")
                            .font(.system(size: 25.0).bold())
                            .foregroundStyle(Color.black)
                            .frame(width: UIScreen.main.bounds.width / 2.2, height: UIScreen.main.bounds.height / 4)
                            .background(Color(.donor))
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            
                    }
                    
                    NavigationLink {
                        ContentView()
                    } label: {
                        Text("Recipient")
                            .font(.system(size: 25.0).bold())
                            .foregroundStyle(Color.black)
                            .frame(width: UIScreen.main.bounds.width / 2.2, height: UIScreen.main.bounds.height / 4)
                            .background(Color(.recipent))
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    }
                }.padding(.all, 20)
                Spacer()
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
        }
    }
}

#Preview {
    UserSelection()
}
