//
//  ExpressCheckoutItemView.swift
//  GEC
//
//  Created by RODRIGO FRANCISCO PABLO on 11/11/23.
//

import SwiftUI

struct MainCheckoutView: View {

    var body: some View {
        VStack {
            StickyTopComponent()
            ScrollView {
                VStack(alignment: .leading) {
                    DeliveryView()
                    PaymentFormView()
                    ProductsListView()
                    PurchaseSummaryView()
                    TermsAndPrivacyView()
                }
            }
            .background(Color(red: 0.84, green: 0.84, blue: 0.84,opacity: 0.2))
            StickyBottomComponent()
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        MainCheckoutView()
    }
}
