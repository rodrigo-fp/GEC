//
//  CheckoutProductView.swift
//  GEC
//
//  Created by Rodrigo Francisco on 25/11/23.
//

import SwiftUI

struct CheckoutProductView: View {
    var body: some View {
            VStack(alignment: .leading, spacing: 15) {
                ProductEstimatedDeliveryView(viewModel: .fake)
                ProductInformationView(viewModel: .fake)
                PromotionSelectorView(viewModel: .fake)
            }
            .padding()
            .cardStyle(backgroundColor: .white)
            .padding(.all, 10)
    }
}

#Preview {
    CheckoutProductView()
}
