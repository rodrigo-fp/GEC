//
//  ProductsView.swift
//  GEC
//
//  Created by RODRIGO FRANCISCO PABLO on 13/11/23.
//

import SwiftUI

struct ProductsView: View {
    @State private var quantity: String = ""
    
    var body: some View {
        CheckoutItemView(titleItem: "3.- Artículos") {
            VStack(alignment: .leading, spacing: 15) {
                estimatedDelivery
                HStack {
                    productImage
                    productDescription
                }
                promotionSelector
            }
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

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
