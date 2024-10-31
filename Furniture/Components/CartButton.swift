//
//  CartButton.swift
//  Furniture
//
//  Created by ahmet karadağ on 31.10.2024.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "bag.fill")
                .padding(5)
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.headline)
                    .foregroundColor(.white)
                    .background(.green)
                    .frame(width: 15, height: 15)
                    .cornerRadius(45)
            }
           
        }
    }
}

#Preview {
    CartButton(numberOfProducts: 2)
}
