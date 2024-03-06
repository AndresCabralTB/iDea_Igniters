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
       
        
        TabView{
            Text("Hello")
        }  .tabItem{
            Text("Home")
            Image(systemName: "house")
        }
    
    MapView()
        .tabItem(){
            Text("Locations")
            Image(systemName: "mappin.and.ellipse")
        }
    //Chats()
        .tabItem(){
            Text("AR")
            Image(systemName: "camera.fill")
        }
    
    //Profile()
        .tabItem(){
            Text("Profile")
            Image(systemName: "person")
        }
    }
}



func itemStack12(image: Image,text: String, scale: Double, color: Color ) -> some View{
    VStack{
        image
            .resizable().scaleEffect(scale)
            .foregroundStyle(LinearGradient(
                gradient: Gradient(colors: [Color.red, .red]),
                startPoint: .top,
                endPoint: .bottom))
        Text(text)
            .foregroundStyle(Color.black)
            .font(.title3)

    }
    .frame(width: 150, height: 150)
    .background(Color.white)
    .clipShape(RoundedRectangle(cornerRadius: 15)) .background(
        RoundedRectangle(cornerRadius: 15) // stroke border
            .stroke(Color.black, lineWidth: 1)
    )
    
    
}

#Preview {
    ContentView()
}
