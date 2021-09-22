//
//  TabBarContentView.swift
//  UserSwiftUI
//
//  Created by Seven on 2021/9/22.
//

import SwiftUI

struct TabBarContentView: View {
    
    
    init() {
//        self.configNavBar()
    }
    
    var body: some View {
        
        //MARK: Tab
        TabView {
            UserListContentView().tabItem {
                Image(systemName: "person.circle.fill").renderingMode(.template)
                Text("User")
            }
            
            
            MinePageContentView().tabItem {
                
                Image(systemName: "info.circle").renderingMode(.template)

                Text("Mine")
                
            }
        
        }.accentColor(.black)
        
    }
}

struct TabBarContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarContentView()
    }
}

extension TabBarContentView{
    

    
    
}
