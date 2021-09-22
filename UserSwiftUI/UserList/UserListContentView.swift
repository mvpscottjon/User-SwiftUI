//
//  UserListContentView.swift
//  UserSwiftUI
//
//  Created by Seven on 2021/9/22.
//

import SwiftUI

struct UserListContentView: View {
    var body: some View {
        
      
        NavigationView {
            
            
        
            
          
        
        //MARK: List
        List(0..<20) {
            item in
           
                Image(systemName: "photo").resizable().scaledToFill().frame(width: 50, height: 50, alignment: .center).clipShape(Circle()).border(Color.black, width: 0)

                VStack(alignment: .leading){
                    Text("name")
                    Text("subtitle").font(.subheadline).foregroundColor(.gray)
                    
                    
                    
                }
                
             
         
            
        }.environment(\.defaultMinListRowHeight, 70)

            
          
            
            
            
            
            
        .navigationBarTitle("Github")
        
        }
           
            
    }
}

struct UserListContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserListContentView()
    }
}
