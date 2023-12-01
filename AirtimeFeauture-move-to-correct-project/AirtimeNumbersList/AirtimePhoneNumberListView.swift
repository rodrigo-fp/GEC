//
//  AirtimeNumbersListView.swift
//  CheckoutFeature
//
//  Created by Rodrigo Francisco on 01/12/23.
//

import SwiftUI

struct AirtimePhoneNumberListView: View {
    var body: some View {
        VStack(spacing: 0) {
            titleView
            VStack {
                phoneNumberInfoView
                phoneNumberInfoView
                phoneNumberInfoView
                addNewPhoneNumberView
            }
            .background(Color.white)
        }
        .padding()
        .background(Color.lightGrayBackground)
    }
    
    private var titleView: some View {
        Text("1. selecciona tus números a recargar")
            .bold()
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.white)
    }
    
    private var phoneNumberInfoView: some View {
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
    
    private var addNewPhoneNumberView: some View {
        HStack {
            Text("Agregar teléfono")
                .fontWeight(.semibold)
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding()
        
    }
}

#Preview {
    AirtimePhoneNumberListView()
}
