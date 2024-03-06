//
//  ContentView.swift
//  iDeaIgniters
//
//  Created by Andres Cabral on 29/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ZStack{
                
                LinearGradient(gradient: Gradient(colors: [.white, .white]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.top)
                
                VStack(alignment: .leading){
                    Spacer()
            
                    LazyVStack(alignment: .leading){
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
                            //.underline()
                            .padding(.bottom, 30)
                            
                        }.background(
                            Image("greenEarth")
                                .resizable()
                                .scaledToFill()
                                .mask(LinearGradient(gradient: Gradient(stops: [
                                            .init(color: .black, location: 0),
                                            .init(color: .clear, location: 1),
                                            .init(color: .black, location: 1),
                                            .init(color: .clear, location: 1)
                                        ]), startPoint: .top, endPoint: .bottom))
                                        //.padding()
                                .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height * 0)
                        )

                    
                    
                    Text("Donated Products")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal, 10)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        HStack{
                            NavigationLink(destination: ProductList(title: "Shirts")){
                                itemStack(image: Image("PoloNew"), text: "Shirts", scale: 0.6, color: Color.shirts)
                            }
                            
                            
                            NavigationLink(destination: ProductList(title: "Shoes")){
                                itemStack(image: Image("ShoeImage"), text: "Shoes", scale: 0.7, color: Color.white)
                            }
                            
                            NavigationLink(destination: ProductList(title: "Books")){
                                itemStack(image: Image("Books"), text: "Books", scale: 0.7, color: Color.white)
                            }
                            NavigationLink(destination: ProductList(title: "Electronics")){
                                itemStack(image: Image("Electronic"), text: "Electronics", scale: 0.1, color: Color.white)
                                
                            }
                            
                        }.padding(.all, 10)
                    }
                    
                    Text("Donate to Organizations")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(){
                            ForEach(organizations, id: \.id){org in
                                Link(destination: org.Website){
                                    itemStack(image: org.Image, text: org.Name, scale: 0.7, color: Color.donor)
                                }
                            }
                        }.padding(.all, 10)
                    }
                    
                    Spacer()
                    
                }.padding(.horizontal, 10)
                
                
            }
            .tabItem{
                Text("Home")
                Image(systemName: "house")
            }
            
            
            MapView()
                .tabItem(){
                    Text("Locations")
                    Image(systemName: "mappin.and.ellipse")
                }
            
            ARView()
                .tabItem(){
                    Text("AR")
                    Image(systemName: "camera.fill")
                }
        }.navigationBarBackButtonHidden(true)
        
        
    }
    
}


func itemStack(image: Image,text: String, scale: Double, color: Color ) -> some View{
    VStack(alignment: .leading, spacing: 10){
        image
            .resizable()
            .scaledToFill()
            .clipped()
            .background(Color.white)
            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.width * 0.4)
            .clipShape(RoundedRectangle(cornerRadius: 0)) .background(
                RoundedRectangle(cornerRadius: 0) // stroke border
                    .stroke(Color.white, lineWidth: 3)
            )
        
        Text(text)
            .font(.title3)
            .fontWeight(.medium)
            .foregroundStyle(Color.black)
        
    }
    .padding(.trailing, 10)
    
    
}


#Preview {
    
    ContentView()
}
