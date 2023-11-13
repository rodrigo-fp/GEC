//
//  PaymentFormView.swift
//  GEC
//
//  Created by RODRIGO FRANCISCO PABLO on 11/11/23.
//

import SwiftUI

struct PaymentFormView: View {
    
    @State private var expirationDate: String = ""
    
    var body: some View {
        CheckoutItemView(titleItem: "2.- Forma de pago") {
            HStack {
                Image(systemName: "heart.fill").foregroundColor(.red)
                Text("Citi").bold()
                Text("*5066")
                Spacer()
                Text("Cambiar").underline()
            }.padding(.bottom, -20)
            HStack {
                VStack(alignment: .leading) {
                    Text("Fecha de vencimiento").font(.caption)
                    TextField("MM/AA*", text: $expirationDate)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                VStack(alignment: .leading) {
                    Text("Código de Seguridad")
                        .font(.caption)
                    TextField("CVV*", text: $expirationDate)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
            }
        }
    }
}

struct PaymentFormView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentFormView()
    }
}
