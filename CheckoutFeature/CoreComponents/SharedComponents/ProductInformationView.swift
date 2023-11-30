//
//  ProductInformationView.swift
//  GEC
//
//  Created by Rodrigo Francisco on 26/11/23.
//

import SwiftUI

struct ProductInformationView: View {
    
    @State private var quantity: String = ""
    
    var body: some View {
        HStack(alignment: .top) {
            productImage
            productInformation
            optionButton
        }
    }
    
    private var productImage: some View {
        Image(systemName: "pencil")
            .frame(width: 100, height: 150)
            .background(.yellow)
    }
    
    private var productInformation: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Abrigo Gianfranco Dunna con bolsillos para hombre")
            Text("Cantidad: 1, Talla: G, Color: Gris, Material: Poliéster")
            Text("$1,899.00")
            quantityModifier
        }.fixedSize(horizontal: false, vertical: true) // This prevents truncating text inside vstack
    }
    
    private var quantityModifier: some View {
        HStack(alignment: .center) {
            Image(systemName: "trash")
            TextField("1", text: $quantity)
                .background(.gray)
            Image(systemName: "trash")
        }
    }
    
    private var optionButton: some View {
        Image(systemName: "ellipsis")
            .rotationEffect(.degrees(90))
            .padding(.top, 15)
    }
}
