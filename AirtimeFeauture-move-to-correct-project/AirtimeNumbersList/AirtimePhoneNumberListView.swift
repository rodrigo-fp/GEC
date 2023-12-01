//
//  AirtimeNumbersListView.swift
//  CheckoutFeature
//
//  Created by Rodrigo Francisco on 01/12/23.
//

import SwiftUI

struct AirtimePhoneNumberListView: View {
    var body: some View {
        VStack {
            ScrollView {
                itemList
            }.background(Color.lightGrayBackground)
            stickyBottomView
        }
    }
    
    private var itemList: some View {
        VStack(spacing: 0) {
            titleView
            VStack {
                PhoneNumberInfoView()
                PhoneNumberInfoView()
                PhoneNumberInfoView()
                addNewItemView
            }
            .background(Color.white)
        }
        .padding()
    }
    
    private var stickyBottomView: some View {
        WideButtonView(title: "Continuar")
    }
    
    private var titleView: some View {
        Text("1. selecciona tus números a recargar")
            .bold()
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.white)
    }
    
    private var addNewItemView: some View {
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
