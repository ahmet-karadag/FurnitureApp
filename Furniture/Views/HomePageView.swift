//
//  HomePageView.swift
//  Furniture
//
//  Created by ahmet karadağ on 1.11.2024.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        
        NavigationStack {
            ZStack(alignment: .top){
                Color.white
                    .edgesIgnoringSafeArea(.all)
                VStack(){
                    AppBar()
                    SearchView()
                    ImageSliderView()
                    HStack{
                        Text("new Furnitures")
                            .font(.title2)
                            .fontWeight(.medium)
                        Spacer()
                        NavigationLink(destination: {
                            ProductView()
                        }, label: {
                            Image(systemName: "circle.grid.2x2")
                                .foregroundColor(Color("kPrimary"))
                        })
                    }
                    .padding()
                    //showindicators kaydırma çubuğunun gösterilip gösterilmeyeceğini belirtir.
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 15){
                            ForEach(productList, id: \.id){ product in
                                NavigationLink{
                                    ProductDetailsView(product: product)
                                } label:{
                                    ProductCardView(product: product)
                                        .environmentObject(cartManager)
                                }
                            }
                        }.padding(.horizontal)
                        
                            
                    }
                }
            }
        }
    }
}

#Preview {
    HomePageView()
        .environmentObject(CartManager())
}

struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            HStack{
                Image(systemName: "location.north.circle")
                    .resizable()
                    .frame(width: 20,height: 20)
                    .padding(.trailing)
                Text("izmir, Türkiye")
                    .font(.title2)
                    .foregroundColor(.gray)
                Spacer()
                NavigationLink(destination: CartView()
                    .environmentObject(cartManager)
                ){
                    CartButton(numberOfProducts: cartManager.products.count)
                }
                
            }
            Text("you can find the most\nLuxury")
                .font(.largeTitle).bold()
            + Text("Furniture")
                .font(.largeTitle).bold()
                .foregroundColor(Color("kPrimary"))
        }
        .padding()
        .environmentObject(CartManager())
    }
}
