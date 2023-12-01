//
//  PhoneNumberInfoView.swift
//  CheckoutFeature
//
//  Created by Rodrigo Francisco on 01/12/23.
//

import SwiftUI

struct PhoneNumberInfoView: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 20) {
                Image(systemName: "square")
                    .frame(width: 30, height: 30)
                VStack(alignment: .leading, spacing: 8) {
                    Text("Mi numero")
                    Text("(55) 572324234")
                    Text("Unefon")
                        .fontWeight(.thin)
                }
                Spacer()
                ThreeDotOptionButton()
            }
            .padding()
            Divider()
        }
    }
}

#Preview {
    PhoneNumberInfoView()
}
