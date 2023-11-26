//
//  ProductsView.swift
//  GEC
//
//  Created by RODRIGO FRANCISCO PABLO on 13/11/23.
//

import SwiftUI

struct ProductsListView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("3. Artículos")
                .bold()
                .padding(.all, 10)
            ProductView()
            ProductView()
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsListView()
    }
}
