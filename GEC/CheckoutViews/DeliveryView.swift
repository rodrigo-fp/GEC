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
            VStack(alignment: .leading) {
                HStack {
                    Text("Click & Collect")
                        .bold()
                    Text("Cambiar")
                        .underline()
                    Spacer()
                }.padding(.all, 20)
                
                Text("Liverpool Santa Fe")
                    .padding([.leading, .bottom], 20)
            }
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .shadow(radius: 10)
            .padding(.all, 10)
        }
    }
}

struct DeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryView()
    }
}
