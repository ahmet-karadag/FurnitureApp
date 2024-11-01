//
//  CartManager.swift
//  Furniture
//
//  Created by ahmet karadağ on 31.10.2024.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(_ product: Product) {
        products.append(product)
        total += product.price
        
    }
    func removeFromCart(_ product: Product) {
        products = products.filter { $0.id != product.id }
        total = total - product.price
    }
}
