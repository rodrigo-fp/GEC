//
//  CheckoutProductView.swift
//  GEC
//
//  Created by Rodrigo Francisco on 25/11/23.
//

import SwiftUI

struct CheckoutProductView: View {
    
    var body: some View {
        GenericCardContainerView {
            VStack(alignment: .leading, spacing: 15) {
                estimatedDelivery
                ProductInformationView()
                promotionSelector
            }.padding(.bottom, 15)
        }
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
