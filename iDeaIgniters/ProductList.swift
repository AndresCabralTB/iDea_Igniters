//
//  ProductList.swift
//  iDeaIgniters
//
//  Created by Omar Atriano on 04/03/24.
//

import SwiftUI

struct ProductList: View {
    @State var title: String
    var body: some View {
        VStack{
            
            HStack{
                Text("Blue Earth")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .padding(.horizontal, 10)
                    .foregroundStyle(Color.blueEarth)
                
                
                Image(systemName: "globe.americas")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundStyle(Color.blueEarth)
            }
            
            ScrollView{
                ProductCardView(photo: "PoloA",title: "T-shirt", description: "Black t-shirt", size: "M")
                
                ProductCardView(photo: "PoloA",title: "T-shirt", description: "Black t-shirt", size: "M")

                ProductCardView(photo: "PoloA",title: "T-shirt", description: "Black t-shirt", size: "M")

                ProductCardView(photo: "PoloA",title: "T-shirt", description: "Black t-shirt", size: "M")

                ProductCardView(photo: "PoloA",title: "T-shirt", description: "Black t-shirt", size: "M")

                ProductCardView(photo: "PoloA",title: "T-shirt", description: "Black t-shirt", size: "M")

                ProductCardView(photo: "PoloA",title: "T-shirt", description: "Black t-shirt", size: "M")

                ProductCardView(photo: "PoloA",title: "T-shirt", description: "Black t-shirt", size: "M")

                ProductCardView(photo: "PoloA",title: "T-shirt", description: "Black t-shirt", size: "M")

                
            }
            .frame(width: UIScreen.main.bounds.width * 0.9)

        }
        .navigationTitle("\(title)")
    }
}

#Preview {
    SplashScreen()
}
