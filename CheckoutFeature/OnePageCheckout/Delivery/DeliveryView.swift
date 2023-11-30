//
//  DeliveryView.swift
//  GEC
//
//  Created by RODRIGO FRANCISCO PABLO on 11/11/23.
//

import SwiftUI

struct DeliveryView: View {
    private struct Constants {
        static let titleView = "1.- Entrega"
        static let changeDelivery = "Cambiar"
    }
    
    private let model: DeliveryViewModel
    
    var body: some View {
        CheckoutItemView(titleItem: Constants.titleView) {
            HStack {
                Text(model.deliveryTitle)
                    .bold()
                Text(Constants.changeDelivery)
                    .underline()
                Spacer()
            }.padding(.bottom, -20)
            Text(model.deliveryPlace)
        }
    }
    
    init(model: DeliveryViewModel) {
        self.model = model
    }
}

struct DeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryView(model: .fake)
    }
}
