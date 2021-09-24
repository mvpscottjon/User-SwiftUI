//
//  TabBarContentView.swift
//  UserSwiftUI
//
//  Created by Seven on 2021/9/22.
//

import SwiftUI

struct TabBarContentView: View {
    
    let minDragTranslateForSwipe:CGFloat = 50
    
    //total number of item
    let numTabs = 2
    
    @State private var selectedTab = 0
    
    
    init() {
    }
    
    var body: some View {
        
        //MARK: NAV
        NavigationView{
            
            //MARK: Tab
            TabView(selection: $selectedTab) {
                UserListContentView().tabItem {
                    Image(systemName: "person.circle.fill").renderingMode(.template)
                    Text("User")
                }.tag(0)
                    .highPriorityGesture(DragGesture().onEnded({ self.handeSwipe(translation: $0.translation.width) }))


                MinePageContentView().tabItem {

                    Image(systemName: "info.circle").renderingMode(.template)

                    Text("Mine")

                }.tag(1)
                    .highPriorityGesture(DragGesture().onEnded({ self.handeSwipe(translation: $0.translation.width) }))

            
// 
            }
            .navigationBarTitle("Github")
//            .tabViewStyle(.page)
//            .tabViewStyle(PageTabViewStyle())
//            .tabViewStyle(DefaultTabViewStyle())
            
            .accentColor(.black)
            
        }
       
        
    }
}


extension TabBarContentView{
    
   
    private func handeSwipe(translation: CGFloat){
        
//        print("Dragggggg \(translation) ")
        
        if translation > minDragTranslateForSwipe && selectedTab > 0 {
            selectedTab -= 1
            
            
        }else if translation < -minDragTranslateForSwipe && selectedTab < (numTabs - 1) {
            
            selectedTab += 1
        }
        
        
    }
    
    
}

struct TabBarContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarContentView()
    }
}

extension TabBarContentView{
    

    
    
}
