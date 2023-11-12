//
//  CheckoutItemView.swift
//  GEC
//
//  Created by RODRIGO FRANCISCO PABLO on 11/11/23.
//

import SwiftUI

struct CheckoutItemView<ComponentView: View>: View {
    
    let titleItem: String
    let component: ComponentView
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(titleItem)
                .bold()
                .padding(.all, 10)
            component
        }
    }
    
    init(titleItem: String, @ViewBuilder component: () -> ComponentView) {
        self.titleItem = titleItem
        self.component = component()
    }
}

struct CheckoutItemView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutItemView(titleItem: "1. Entrega") {
            Text("This is test")
        }
    }
}
