//
//  CartView.swift
//  SweaterShop
//
//  Created by Daksh  on 18/04/24.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        ScrollView {
            Text("Your cart is empty")
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top  )
    }
}

#Preview {
    CartView()
}
