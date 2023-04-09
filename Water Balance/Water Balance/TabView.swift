//
//  TabView.swift
//  Water Balance
//
//  Created by bakebrlk on 09.04.2023.
//

import SwiftUI

struct TabView: View {
    
    @State private var SelectTab: Int = 1
    
    init(){
        UITabBar.appearance().unselectedItemTintColor = .white
    }
    
    var body: some View {
        
    
       
        TabView(selection: $SelectTab){
            Text("ailfj")
                .tabItem{
                    Text("dadw")
                    Image(systemName:"house.circle.fill")
                }
                .tag(1)
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
