//
//  CartView.swift
//  Furniture
//
//  Created by ahmet karadağ on 1.11.2024.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    ShowCartProductView(product: product)
                }
                HStack{
                    Text("your total is")
                    Text("$ \(cartManager.total).00")
                        .bold()
                }
                .padding()
                PaymentButton(action: {})
            }else{
                Text("your card is empty")
                    .padding(.top)
            }
        }.navigationTitle("My Cart")
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
