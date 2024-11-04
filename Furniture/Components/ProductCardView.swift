//
//  ProductCardView.swift
//  Furniture
//
//  Created by ahmet karadağ on 31.10.2024.
//

import SwiftUI

struct ProductCardView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        ZStack {
            Color("kSecondary")
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading){
                    Image(product.image)
                        .resizable()
                        .frame(width: 160,height: 160)
                        .cornerRadius(12)
                    Text(product.name)
                        .font(.headline)
                        .padding(.vertical, 1)
                    Text(product.supplier)
                        .foregroundColor(.gray)
                        .font(.caption)
                        .padding(.vertical, 15)
                    Text("$ \(product.price)")
                        .foregroundColor(.black)
                        .bold()
                        .padding(.bottom,10)
                }
                Button (action: {
                    cartManager.addToCart(product)
                }, label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(Color("kPrimary"))
                        .frame(width: 45 , height: 45)
                        .padding(.trailing)
                }).padding()
            }
        }.frame(width: 180, height:265)
            .cornerRadius(20)
    }
}

#Preview {
    ProductCardView( product: productList[0])
        .environmentObject(CartManager())
}
