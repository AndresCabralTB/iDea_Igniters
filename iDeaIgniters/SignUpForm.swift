//
//  SignUpForm.swift
//  iDeaIgniters
//
//  Created by Andres Cabral on 02/03/24.
//

import SwiftUI


struct SignUpForm: View {
    @State var viewTitle: String = ""
    @State private var name: String = ""
    @State private var lastName: String = ""
    @State private var address: String = ""

    var body: some View {
            VStack(alignment: .leading){
                
                Text("Almost there!")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.vertical, 20)
                
                Divider()
                    .frame(width: UIScreen.main.bounds.width / 1.1, height: 3.0)
                    .overlay(.black)
                    .padding(.bottom, 10)
                
                textView(title: "Email:", label: address, placeholder: "@gmail.com")
                textView(title: "Username:", label: name, placeholder: "John")
                textView(title: "Password:", label: lastName, placeholder: "")
                textView(title: "Age:", label: address, placeholder: "")
                textView(title: "Gender:", label: address, placeholder: "")
                textView(title: "Phone Number:", label: address, placeholder: "+52 123-456-7890")
                
            }.navigationTitle(viewTitle)
            
            NavigationLink(destination: ContentView(), label: {
                Text("Sign Up")
                    .foregroundStyle(Color.black)
                    .frame(width: UIScreen.main.bounds.width * 0.90, height: 50)                    .background(
                        LinearGradient(gradient: Gradient(colors: [.recipent, .donor]), startPoint: .leading, endPoint: .trailing)
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 5))

            }).padding(.top, 10)
            
        .frame(width: UIScreen.main.bounds.width)
    }
}

struct textView: View{ //Call the view everytime a new text field must be added
    @State var title: String
    @State var label: String
    @State var placeholder: String
    
    var body: some View{
        
        VStack(alignment: .leading){
            Text(title).multilineTextAlignment(.leading)
            customTextField(placeholder: self.placeholder, text: self.$label)
        }.frame(width: UIScreen.main.bounds.width * 0.90)
    }
    
}

func customTextField(placeholder: String, text: Binding<String>) -> some View {
        TextField(placeholder, text: text)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .textFieldStyle(OvalTextFieldStyle()) // Optional: Apply a style
            .padding(.bottom, 10) // Optional: Add padding
            
    
    }

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .cornerRadius(15)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black))
    }
}

#Preview {
    //SignUpForm(viewTitle:)
    //SignUpForm(viewTitle: "Donor")
    SplashScreen()
}
