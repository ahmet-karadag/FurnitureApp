//
//  SearchView.swift
//  Furniture
//
//  Created by ahmet karadağ on 31.10.2024.
//

import SwiftUI

struct SearchView: View {
    @State private var search: String = ""
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                    .frame(height: UIScreen.main.bounds.height * 0.06)
                TextField("search", text: $search)
                    .frame(height: UIScreen.main.bounds.height * 0.06)
            }
            .background(Color("kSecondary"))
            .cornerRadius(12)
            
            Image(systemName: "camera")
                .padding()
                .foregroundStyle(.white)
                .background(Color("kPrimary"))
                .cornerRadius(12)
                
        }.padding(.horizontal)
        
    }
}

#Preview {
    SearchView()
}
