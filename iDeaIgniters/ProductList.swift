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
                
                Text("\(title)")
                    .font(.title)
                    .padding()
            }
            ScrollView{
                ProductCardView(photo: "PoloN",title: "T-shirt", description: "Black t-shirt", size: "M", price: 6)
                ProductCardView(photo: "PoloN",title: "T-shirt", description: "Black t-shirt", size: "M", price: 6)
                ProductCardView(photo: "PoloN",title: "T-shirt", description: "Black t-shirt", size: "M", price: 6)
                ProductCardView(photo: "PoloN",title: "T-shirt", description: "Black t-shirt", size: "M", price: 6)
                ProductCardView(photo: "PoloN",title: "T-shirt", description: "Black t-shirt", size: "M", price: 6)
                ProductCardView(photo: "PoloN",title: "T-shirt", description: "Black t-shirt", size: "M", price: 6)
                ProductCardView(photo: "PoloN",title: "T-shirt", description: "Black t-shirt", size: "M", price: 6)
                ProductCardView(photo: "PoloN",title: "T-shirt", description: "Black t-shirt", size: "M", price: 6)
            }
            .frame(width: UIScreen.main.bounds.width )
            .background(Color.donor)
        }
    }
}

#Preview {
    ProductList(title: "T-shirts")
}
