//
//  ProductView.swift
//  Furniture
//
//  Created by ahmet karadağ on 5.11.2024.
//

import SwiftUI

struct ProductView: View {
    @EnvironmentObject var cartmanager: CartManager
    var column = [GridItem(.adaptive(minimum: 150), spacing: 10)]
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: column,spacing: 15) {
                    ForEach(productList, id: \.id) { product in
                        NavigationLink(destination: {
                            ProductDetailsView(product: product)
                        }, label: {
                            ProductCardView(product: product)
                        })
                    }
                }
            }
            .padding()
            .navigationTitle("all furniture")
        }
    }
}

#Preview {
    ProductView()
        .environmentObject(CartManager())
}
