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
    var width: String
    var height: String
    var diameter: String
    
}
var productList = [
    Product(name: "leather sofa",
            description: "when you can relax after a long day, enjoy TV with your family and children and have fun conversations with your loved ones is the comfortable way to spend your time.",
            image: "fn1",
            supplier: "karadag",
            price: 300, width: "200", height: "145", diameter: "100"),
    Product(name: "nice sofa",
            description: "when you can relax after a long day, enjoy TV with your family and children and have fun conversations with your loved ones is the comfortable",
            image: "fn2",
            supplier: "erdem",
            price: 340, width: "200", height: "145", diameter: "100"),
    Product(name: "soft sofa",
            description: "when you can relax after a long day, enjoy TV with your family and children and have fun conversations with your loved ones is the comfortable",
            image: "fn3",
            supplier: "omer",
            price: 450, width: "200", height: "145", diameter: "100" ),
    Product(name: "extra soft sofa",
            description: "when you can relax after a long day, enjoy TV with your family and children and have fun conversations with your loved ones is the comfortable",
            image: "fn4",
            supplier: "feyaz",
            price: 750, width: "200", height: "145", diameter: "100"),
    Product(name: "gray soft sofa",
            description: "when you can relax after a long day, enjoy TV with your family and children and have fun conversations with your loved ones is the comfortable",
            image: "fn5",
            supplier: "kadir",
            price: 640, width: "200", height: "145", diameter: "100"),
    Product(name: "mini sofa",
            description: "when you can relax after a long day, enjoy TV with your family and children and have fun conversations with your loved ones is the comfortable",
            image: "fn2",
            supplier: "karadag",
            price: 250, width: "200", height: "145", diameter: "100")]

