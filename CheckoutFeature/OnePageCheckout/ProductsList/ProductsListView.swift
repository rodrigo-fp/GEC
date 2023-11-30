//
//  ProductsView.swift
//  GEC
//
//  Created by RODRIGO FRANCISCO PABLO on 13/11/23.
//

import SwiftUI

struct ProductsListView: View {
    
    private enum Constants {
        static let titleView = "3. Artículos"
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(Constants.titleView)
                .bold()
                .padding(.all, 10)
            CheckoutProductView()
                .padding(.bottom, 20)
            CheckoutProductView()
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsListView()
    }
}
