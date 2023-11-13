//
//  DeliveryView.swift
//  GEC
//
//  Created by RODRIGO FRANCISCO PABLO on 11/11/23.
//

import SwiftUI

struct DeliveryView: View {
    var body: some View {
        CheckoutItemView(titleItem: "1.- Entrega") {
            HStack {
                Text("Click & Collect")
                    .bold()
                Text("Cambiar")
                    .underline()
                Spacer()
            }.padding(.bottom, -20)
            Text("Liverpool Santa Fe")
        }
    }
}

struct DeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryView()
    }
}
