//
//  CheckoutItemView.swift
//  GEC
//
//  Created by RODRIGO FRANCISCO PABLO on 11/11/23.
//

import SwiftUI

struct CardComponent<ComponentView: View>: View {
    
    let component: ComponentView
    
    var body: some View {
        VStack(alignment: .leading) {
            component
                .padding(.all, 20)
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .shadow(radius: 10)
        .padding(.all, 10)
    }
    
    init(@ViewBuilder component: () -> ComponentView) {
        self.component = component()
    }
}

struct CheckoutItemView<ComponentView: View>: View {
    
    let titleItem: String
    let component: ComponentView
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(titleItem)
                .bold()
                .padding(.all, 10)
            CardComponent {
                component
            }
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
