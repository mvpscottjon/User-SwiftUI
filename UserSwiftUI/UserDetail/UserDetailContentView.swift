//
//  UserDetailContentView.swift
//  UserSwiftUI
//
//  Created by Seven on 2021/9/23.
//

import SwiftUI

struct UserDetailContentView: View {
    var body: some View {
        
        VStack{
            
            //userPhoto
            VStack{
                Image(systemName: "photo")
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 150, height: 150, alignment: .center)
                
                Text("Name").padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
            }
            
            
        
            Divider().frame( maxHeight: 2).background(Color.init(#colorLiteral(red: 0.7259553671, green: 0.7456251979, blue: 0.7582300305, alpha: 1))).padding(.top, 50)
        
            HStack{
            VStack(alignment:.leading){
             
                Spacer(minLength: 10)
                Label("Name", systemImage: "photo")
                Spacer()
                Label("Location", systemImage: "photo")
                Spacer()
                Label("URL", systemImage: "photo")
                Spacer()
                
            }.frame(width: .infinity, height: 300, alignment: .leading)
            .offset(x: 100, y: 0)
                
                Spacer()
            }
            
            
            Spacer()
        }.offset(x: 0, y: 30)
        
        
      
        
        
        
    }
}

struct UserDetailContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailContentView()
    }
}
