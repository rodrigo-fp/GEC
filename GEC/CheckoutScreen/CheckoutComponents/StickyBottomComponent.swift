//
//  StickyBottomComponent.swift
//  GEC
//
//  Created by Rodrigo Francisco on 25/11/23.
//

import SwiftUI

struct StickyBottomComponent: View {
    var body: some View {
        Button(action: {
            print("Do nothing")
        }, label: {
            Text("Terminar compra")
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundStyle(.white)
                .background(.pink)
        }).padding()
    }
}

#Preview {
    StickyBottomComponent()
}
