//
//  CheckoutProductView.swift
//  GEC
//
//  Created by Rodrigo Francisco on 25/11/23.
//

import SwiftUI

struct CheckoutProductView: View {
    
    @State private var quantity: String = ""
    
    var body: some View {
        GenericCardContainerView {
            VStack(alignment: .leading, spacing: 15) {
                estimatedDelivery
                productInformationView
                promotionSelector
            }.padding(.bottom, 15)
        }
    }
    
    private var productInformationView: some View {
        HStack(alignment: .top) {
            productImage
            productInformation
            optionButton
        }
    }
    
    private var optionButton: some View {
        Image(systemName: "ellipsis")
            .rotationEffect(.degrees(90))
            .padding(.top, 15)
    }
    
    private var estimatedDelivery: some View {
        VStack {
            HStack {
                Text("Entrega estimada:")
                Text("18 noviembre de 2023")
                Spacer()
            }
            Divider()
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
    
    private var promotionSelector: some View {
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
    CheckoutProductView()
}
