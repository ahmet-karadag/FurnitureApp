//
//  Product.swift
//  Furniture
//
//  Created by ahmet karadağ on 31.10.2024.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var image: String
    var supplier: String
    var price: Int
}
var productList = [
    Product(name: "leather sofa",
            description: "",
            image: "fn1",
            supplier: "karadag",
            price: 300),
    Product(name: "nice sofa",
            description: "",
            image: "fn2",
            supplier: "erdem",
            price: 340),
    Product(name: "soft sofa",
            description: "",
            image: "fn3",
            supplier: "omer",
            price: 450 ),
    Product(name: "extra soft sofa",
            description: "",
            image: "fn4",
            supplier: "feyaz",
            price: 750),
    Product(name: "gray soft sofa",
            description: "",
            image: "fn5",
            supplier: "kadir",
            price: 640),
    Product(name: "mini sofa",
            description: "",
            image: "fn2",
            supplier: "karadag",
            price: 250)]

