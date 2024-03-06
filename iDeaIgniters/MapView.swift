//
//  MapView.swift
//  iDeaIgniters
//
//  Created by Andres Cabral on 04/03/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    @StateObject private var viewModel = MapViewModel()

    
    @State private var position = MapCameraPosition.region(
     MKCoordinateRegion(
     center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
     span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)))
    
    let locationManager = CLLocationManager()
        
        @State var region = MKCoordinateRegion(
            center: .init(latitude: 37.334_900,longitude: -122.009_020),
            span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    
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
                
                
                
                
                /*.clipShape(RoundedRectangle(cornerRadius: 15)).frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.5)
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
                 */

            }
            Spacer()
        }.background(
            LinearGradient(gradient: Gradient(colors: [.white, .white]), startPoint: .top, endPoint: .bottom)
                .navigationBarBackButtonHidden(true)
        )
        
    }
}

final class MapViewModel: NSObject,ObservableObject, CLLocationManagerDelegate{
    var locationManager = CLLocationManager()
    
    func locationServicesEnabled(){
        
        if CLLocationManager.locationServicesEnabled(){
            locationManager = CLLocationManager()
        } else{
            print("Alert. Turn location on")
        }
        
    }
    
    func checkLocationAuthorization(){
        
        guard locationManager == locationManager else{return}
        
        switch locationManager.authorizationStatus{
            
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Your Location is restrcited")
        case .denied:
            print("Permission Denied, go to settings")

        case .authorizedAlways, .authorizedWhenInUse:
            break
        @unknown default:
            break
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
}


#Preview {
    MapView()
}
