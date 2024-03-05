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
    @State var price: Int
    
    var body: some View {
        HStack(alignment: .center,spacing: 0,  content: {
            Image(photo)
                .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 100, maxHeight: 100)
                    .cornerRadius(10.0)
                    .clipped()
            
                
            VStack(alignment: .leading) {
                Text("\(title)").bold()
                Text("Description: \(description)")
                Text("Size: \(size) ")
                Text("Price: $\(price)")
            }.padding(.horizontal)
                .frame(width: UIScreen.main.bounds.width * 0.65)
            
        }).background(RoundedRectangle(cornerRadius: 16)
            .fill(Color.white)
//            .shadow(radius: 20,x: 10,y: 10)
        )
        .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
        
    }
}

#Preview {
    ProductCardView(photo: "PoloN",title: "T-shirt", description: "Black t-shirt", size: "M", price: 6)

}
