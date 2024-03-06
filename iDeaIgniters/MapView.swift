//
//  MapView.swift
//  iDeaIgniters
//
//  Created by Andres Cabral on 04/03/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var position = MapCameraPosition.region(
     MKCoordinateRegion(
     center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
     span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)))
    
    var body: some View {
        
        VStack(alignment: .leading){
            Spacer()

            Text("Locations to donate")
                .font(.title)
                .fontWeight(.bold)
                .underline()
                .padding(.leading, 20)
                .foregroundStyle(Color.blueEarth)
                
            
            VStack{
                Map(initialPosition: position){ //Mostrar el mapa. Darle sus dimensiones
                
                }.clipShape(RoundedRectangle(cornerRadius: 15)).frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3)
                    .padding(.vertical, 25)
                
                List{ //Mostrar los datos de los locales
                    Text("Street: ")
                    Text("City: ")
                    Text("State: ")
                    Text(verbatim: "ZipCode: ")
                    Text(verbatim: "Phone Number: ")
                    Text("Street: ")
                    Text("City: ")
                    Text("State: ")
                    Text(verbatim: "ZipCode: ")
                    Text(verbatim: "Phone Number: ")
                    Text("Street: ")
                    Text("City: ")
                    Text("State: ")
                    Text(verbatim: "ZipCode: ")
                    Text(verbatim: "Phone Number: ")
                }                        
//                .scrollContentBackground(.hidden)

            }
            Spacer()
        }.background(
            LinearGradient(gradient: Gradient(colors: [.white, .white]), startPoint: .top, endPoint: .bottom)
                .navigationBarBackButtonHidden(true)
        )
        
    }
}

#Preview {
    MapView()
}
