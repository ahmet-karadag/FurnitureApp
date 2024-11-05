//
//  ProductDetailsView.swift
//  Furniture
//
//  Created by ahmet karadağ on 4.11.2024.
//

import SwiftUI

struct ProductDetailsView: View {
    var product: Product
    var body: some View {
        ScrollView{
            ZStack{
                Color.white
                VStack(alignment: .leading){
                    ZStack(alignment: .topTrailing){
                        Image(product.image)
                            .resizable()
                            .ignoresSafeArea(edges: .top)
                            .frame(height: 300)
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 30,height: 30)
                            .padding(.top,20)
                            .padding(.trailing,20)
                        
                    }
                   
                    VStack(alignment: .leading){
                        HStack{
                            Text(product.name)
                                .font(.title)
                            Spacer()
                           
                            Text("$ \(product.price).00")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.horizontal)
                                .background(Color("kSecondary"))
                                .cornerRadius(10)
                        }
                        .padding(.vertical)
                        HStack {
                            HStack(spacing: 10){
                                ForEach(0..<5){ index in 
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.red)
                                }
                                Text("(5.0)")
                                    .foregroundStyle(.gray)
                            }.padding(.vertical)
                            
                            Spacer()
                            
                            HStack{
                                Button(action: {
                                    
                                }, label: {
                                    Image(systemName: "minus.square")
                                })
                                Text("2")
                                Button(action: {
                                    
                                }, label: {
                                    Image(systemName: "plus.square.fill")
                                })
                            }
                        }
                        Text("Description")
                            .font(.title)
                            .bold()
                        Text(product.description)
                        Spacer()
                        HStack(alignment: .top){
                            VStack(alignment: .leading){
                                Text("Size")
                                    .font(.title)
                                    
                                Text("Width :\(product.width)")
                                    .foregroundStyle(.gray)
                                Text("height :\(product.height)")
                                    .foregroundStyle(.gray)
                                Text("Diameter :\(product.diameter)")
                                    .foregroundStyle(.gray)
                            }
                            .frame(maxWidth: .infinity,alignment: .leading)
                            VStack(alignment: .trailing){
                                Text("Colors")
                                    .font(.title)
                                    
                                HStack {
                                    ColorView(color: .red)
                                    ColorView(color: .blue)
                                    ColorView(color: .green)
                                }
                                
                            }
                            .frame(maxWidth: .infinity,alignment: .trailing)
                        }
                        .padding(.vertical)
                        PaymentButton(action: {})
                            .frame(width: .infinity,height: 40,alignment: .center)
                            .cornerRadius(15)
                    }
                    .padding()
                    .cornerRadius(45)
                    .background(.white)
                    .offset(y: -30)
                    
                }
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    ProductDetailsView(product: productList[4])
}

struct ColorView: View {
    let color: Color
    var body: some View {
        color
            .frame(width: 20,height: 20)
            .clipShape(Circle())
    }
}
