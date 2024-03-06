//
//  ProductCardView.swift
//  iDeaIgniters
//
//  Created by Omar Atriano on 04/03/24.
//

import SwiftUI

struct ProductCardView: View {
    @State var photo: String
    @State var title: String
    @State var description: String
    @State var size: String
    
    var body: some View {
        HStack(alignment: .center,spacing: 0){
            Image(photo)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height:90)
                .cornerRadius(5.0)
                .clipped()
                .padding(.all, 2)
            
                
            VStack(alignment: .leading) {
                
                Text("Description: \(description)")
                    .font(.title3)

                Text("Size: \(size) ")
                    .font(.title3)


            }.padding(.horizontal)
            
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 0)) .background(
            RoundedRectangle(cornerRadius: 5.0) // stroke border
                .stroke(Color.black, lineWidth: 1)
        )
        
    }
}

#Preview {
   SplashScreen()

}
