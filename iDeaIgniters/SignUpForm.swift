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
        VStack{
            
            textView(title: "Name:", label: name, placeholder: "John")
            textView(title: "Last Name:", label: lastName, placeholder: "Smith")
            textView(title: "Address:", label: address, placeholder: "Address")
            
            NavigationLink(destination: ContentView(), label: {
                Text("Sign Up")
            })
        }.navigationTitle(viewTitle)
        
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
            .textFieldStyle(OvalTextFieldStyle()) // Optional: Apply a style
            .padding(.bottom, 10) // Optional: Add padding
    }

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(LinearGradient(gradient: Gradient(colors: [Color.donor, Color.recipent]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(15)
    }
}

#Preview {
    //SignUpForm(viewTitle:)
    SignUpForm(viewTitle: "Donor")
}
