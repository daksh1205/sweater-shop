//
//  ContentView.swift
//  SweaterShop
//
//  Created by Daksh  on 18/04/24.
//

import SwiftUI

struct ContentView: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Sweater Shop "))
            .toolbar {
                NavigationLink {
                    CartView()
                } label: {
                    CartButton(numberOfProducts: 1 )
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
#Preview {
    ContentView()
}
