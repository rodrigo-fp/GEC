//
//  ProductView.swift
//  GEC
//
//  Created by Rodrigo Francisco on 25/11/23.
//

import SwiftUI

struct ProductView: View {
    
    @State private var quantity: String = ""
    
    var body: some View {
        GenericCardContainerView {
            VStack(alignment: .leading, spacing: 15) {
                estimatedDelivery
                Divider()
                HStack {
                    productImage
                    productDescription
                }
                promotionSelector
            }.padding(.bottom, 15)
        }
    }
    
    var estimatedDelivery: some View {
        HStack {
            Text("Entrega estimada:")
            Text("18 noviembre de 2023")
            Spacer()
        }
    }
    
    var productImage: some View {
        Image(systemName: "pencil")
            .frame(width: 100, height: 150)
            .background(.yellow)
    }
    
    var productDescription: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Abrigo Gianfranco Dunna con bolsillos para hombre")
            Text("Cantidad: 1, Talla: G, Color: Gris, Material: Poliéster")
            Text("$1,899.00")
            quantityModifier
        }.fixedSize(horizontal: false, vertical: true) // This prevents truncating text inside vstack
    }
    
    var quantityModifier: some View {
        HStack(alignment: .center) {
            Image(systemName: "trash")
            TextField("1", text: $quantity)
                .background(.gray)
            Image(systemName: "trash")
        }
    }
    
    var promotionSelector: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("*Elige una promoción")
            HStack {
                Text("3 meses sin intereses")
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding(15)
            .border(.gray)
        }
    }
}

#Preview {
    ProductView()
}
