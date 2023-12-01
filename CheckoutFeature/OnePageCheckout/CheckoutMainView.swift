//
//  CheckoutMainView.swift
//  GEC
//
//  Created by RODRIGO FRANCISCO PABLO on 11/11/23.
//

import SwiftUI

struct CheckoutMainView: View {

    var body: some View {
        VStack {
            StickyTopComponent()
            ScrollView {
                VStack(alignment: .leading) {
                    DeliveryView(viewModel: .fake)
                    PaymentFormView(viewModel: .fake)
                    ProductsListView(viewModels: [.fake, .fake])
                    PurchaseSummaryView()
                    TermsAndPrivacyView()
                }
            }
            .background(Color.lightGrayBackground)
            StickyBottomComponent()
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutMainView()
    }
}
