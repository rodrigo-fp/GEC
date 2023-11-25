//
//  ExpressCheckoutItemView.swift
//  GEC
//
//  Created by RODRIGO FRANCISCO PABLO on 11/11/23.
//

import SwiftUI

struct CheckoutView: View {

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                DeliveryView()
                PaymentFormView()
                ProductsView()
            }
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}
