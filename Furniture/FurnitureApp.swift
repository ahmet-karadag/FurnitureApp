//
//  FurnitureApp.swift
//  Furniture
//
//  Created by ahmet karadağ on 29.10.2024.
//

import SwiftUI

@main
struct FurnitureApp: App {
    @EnvironmentObject var cartManager: CartManager
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
