//
//  Toolbar.swift
//  iDeaIgniters
//
//  Created by iOS Lab on 04/03/24.
//

import SwiftUI

let organizations = [
    organization(id: 0, Name: "Salvation Army", Image: Image("selectionBackground"), Website: URL(string: "https://www.salvationarmyusa.org/usn/")!),
    organization(id: 1, Name: "Goodwill", Image: Image("selectionBackground"), Website: URL(string: "https://www.goodwill.org/")!),
    organization(id: 2, Name: "Hard Off", Image: Image("selectionBackground"), Website: URL(string: "https://www.hardoff.co.jp/")!),
    organization(id: 3, Name: "GreenPeace", Image: Image("selectionBackground"), Website: URL(string: "http://youtube.com")!),
    organization(id: 4, Name: "GreenPeace", Image: Image("selectionBackground"), Website: URL(string: "http://youtube.com")!)]

struct Toolbar: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Items Bazar").font(.custom("Arial Bold", size: 40)).padding(.top, 30)
                Divider().overlay(Color.blue).frame(width: UIScreen.main.bounds.width-70)
                
                HStack{
                    NavigationLink(destination: Toolbar()){
                        VStack{
                            Image(systemName: "tshirt.fill").resizable().frame(width: 80, height: 70)
                                .foregroundStyle(LinearGradient(
                                    gradient: Gradient(colors: [Color.red, .red]),
                                    startPoint: .top,
                                    endPoint: .bottom))
                            Text("Shirts")
                                .foregroundStyle(Color.black)
                                .font(.custom("Arial Bold", size: 18))

                        }
                        .frame(width: 150, height: 150)
                        .background(Color.recipent)
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                        .shadow(color: Color.gray, radius: 5)
                    }
                    
                    NavigationLink(destination: Toolbar()){
                        VStack{
                            Image(systemName: "globe")
                            Text("Pants")
                                .foregroundStyle(Color.black)
                                .font(.custom("Arial Bold", size: 35))

                        }
                        .frame(width: 150, height: 150)
                        .background(Color.recipent)
                        
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                        .shadow(color: Color.gray, radius: 5)
                    }
                    .padding(.leading, 15)
                }
                .padding(.top, 50)
                HStack{
                    NavigationLink(destination: Toolbar()){
                        VStack{
                            Image(systemName: "globe")
                            Text("Pants")
                                .foregroundStyle(Color.black)
                                .font(.custom("Arial Bold", size: 35))

                        }
                        .frame(width: 150, height: 150)
                        .background(Color.recipent)
                        
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                        .shadow(color: Color.gray, radius: 5)
                    }
                    NavigationLink(destination: Toolbar()){
                        VStack{
                            Image(systemName: "tshirt.fill")
                            Text("Pants")
                                .foregroundStyle(Color.black)
                                .font(.custom("Arial Bold", size: 35))

                        }
                        .frame(width: 150, height: 150)
                        .background(Color.recipent)
                        
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                        .shadow(color: Color.gray, radius: 5)
                    }
                    .padding(.leading, 15)
                }
                .padding(.top, 30)
                Divider().overlay(Color.blue).frame(width: UIScreen.main.bounds.width-70).padding(.top, 20)
                Text("Donate to organizations").font(.custom("Arial Bold", size: 20)).padding(.top, 20)
                ScrollView(.horizontal){
                    HStack{
                        ForEach(organizations, id: \.id){org in
                            Link(destination: org.Website){
                                VStack{
                                    org.Image.resizable().frame(width: 40, height: 40)
                                    Text(org.Name).font(.custom("Arial", size: 16)).foregroundStyle(Color.black)
                                }
                                .frame(width: 120, height: 120)
                                .background(Color.recipentOP)
                                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                                
                            }
                        }
                    }
                }
                .scrollIndicators(.hidden)
                .padding(.top, 30)
                
            }
            
        }.navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    Toolbar()
}
