//
//  Sale.swift
//  iDeaIgniters
//
//  Created by Omar Atriano on 06/03/24.
//

import SwiftUI
import CoreData

struct Sale: View {
    @Environment(\.managedObjectContext) private var viewContext

    // Propiedades para los atributos de la entidad
    @State private var title: String = ""
    @State private var des: String = ""
    @State private var type: String = ""
    @State private var size: String = ""
    @State private var price: Int16 = 0

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Detalles de la Prenda")) {
                    TextField("Título", text: $title)
                    TextField("Descripción", text: $des)
                    TextField("Tipo", text: $type)
                    TextField("Talla", text: $size)
                    TextField("Precio", value: $price, formatter: NumberFormatter())
                                    }
                Button("Guardar") {
                    addItem()
                }
            }
            .navigationTitle("Nueva Venta")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Clothes(context: viewContext)
            newItem.id = UUID()
            newItem.title = title
            newItem.des = des
            newItem.type = type
            newItem.size = size
            

            do {
                try viewContext.save()
                print("Artículo guardado.")
            } catch {
                let nsError = error as NSError
                fatalError("Error no resuelto: \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

#Preview {
    Sale()
}
