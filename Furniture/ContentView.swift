//
//  ContentView.swift
//  Furniture
//
//  Created by ahmet karadağ on 29.10.2024.
//

import SwiftUI

struct ContentView: View {
    @State var currentTab: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    @Namespace var animation
    
    var body: some View {
        TabView(selection: $currentTab){
            Text("Home View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.home)
            Text("Search View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.search)
            Text("Notification View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.notification)
            Text("Cart View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.cart)
            Text("Profile View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.profile)
        
        }
        .overlay(
            
            HStack(spacing: 0){
                ForEach(Tab.allCases, id: \.rawValue){ tab in
                    tabButton(tab: tab)
                }
                .padding(.vertical)
                .padding(.bottom, getSafeArea().bottom == 0 ? 5 : (getSafeArea().bottom-15))
                .background(Color("kSecondary"))
            },
            alignment: .bottom
        ).ignoresSafeArea(.all, edges: .bottom)
        

    }
    func tabButton(tab: Tab) -> some View{
        GeometryReader{ proxy in
            Button(action: {
                withAnimation(.spring()){
                    currentTab = tab
                }
            }, label: {
                VStack(spacing: 0){
                    Image(systemName: currentTab == tab ? tab.rawValue + ".fill": tab .rawValue)
                        .resizable()
                        .foregroundColor(Color("kPrimary"))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.06, height: UIScreen.main.bounds.height * 0.06)
                        .frame(maxWidth: .infinity)
                        .background(
                            ZStack{
                                if currentTab == tab {
                                    MaterialEffect(style: .light)
                                        .clipShape(Circle())
                                        .matchedGeometryEffect(id: "Tab", in: animation)
                                    
                                    Text(tab.Tabname)
                                        .font(.footnote)
                                        .foregroundColor(.primary)
                                        .padding(.top,50)
                                    
                                }
                            }
                        ).contentShape(Rectangle())
                        .offset(y: currentTab == tab ? -15 : 0)
                }
            })
        }.frame(height: UIScreen.main.bounds.width * 0.075)
    }
}

#Preview {
    ContentView()
}

enum Tab: String, CaseIterable{
    //home,search,notification,cart,Profile
    case home = "house"
    case search = "magnifyingglass.circle"
    case notification = "bell"
    case cart = "cart"
    case profile = "person.crop.circle"
    
    var Tabname: String{
        switch self {
        case .home:
            return "Home"
        case .search:
            return "Search"
        case .notification:
            return "Notification"
        case .cart:
            return "Cart"
        case .profile:
            return "Profile"
        }
    }
}
extension View {
    func getSafeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        return safeArea
    }
}

struct MaterialEffect: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
    
}
