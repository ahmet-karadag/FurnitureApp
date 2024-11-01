//
//  CartProductView.swift
//  Furniture
//
//  Created by ahmet karadağ on 1.11.2024.
//

import SwiftUI

struct ShowCartProductView: View {
    @EnvironmentObject var cardManager: CartManager
    var product: Product
    var body: some View {
        HStack{
            
        Image(product.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width * 0.3)
        
        VStack(alignment: .leading,spacing: 5) {
            Text(product.name)
                .bold()
                
            Text("$ \(product.price)")
                .bold()
        }.padding()
        Spacer()
        Image(systemName: "trash")
            .foregroundColor(.red)
            .onTapGesture {
                cardManager.removeFromCart(product)
            }
        }
        .padding(.horizontal)
        .background(Color("kSecondary"))
        .cornerRadius(15)
        .padding()
   }
}

#Preview {
    ShowCartProductView(product: productList[0])
        .environmentObject(CartManager())
}
