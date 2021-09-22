//
//  MinePageContentView.swift
//  UserSwiftUI
//
//  Created by Seven on 2021/9/18.
//

import SwiftUI

struct MinePageContentView: View {
   
    
    @ObservedObject var viewModel: MinePageVM = MinePageVM()
    
    
    var body : some View {
//        Text(viewModel.countries.last ?? "Good")
        
//        ZStack(alignment: Alignment(horizontal: .center, vertical: .top), content: {
        
        
        NavigationView{
            
            
            VStack(alignment: .leading){
                

                //big photo
                HStack{
                    Spacer()
                    Image(systemName: "photo")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("GitHub Docs")
                        .foregroundColor(.white).font(.largeTitle)
                    
                    Spacer()
                    
                }.frame(width: .infinity, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color.init(#colorLiteral(red: 0.02263874933, green: 0.1448459029, blue: 0.2967996299, alpha: 1)))
                
                
                    //MARK:info stack
                VStack(alignment: .leading){

                    //user photo
                    Image(systemName: "photo")
                        .renderingMode(.template)
                        .resizable()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                        
                        
                        .foregroundColor(.blue)
//                        .background(Color.yellow)
                        .accentColor(.green)
//
                    
                    //name
                    Text("Your name")
                        .font(.title3).bold()
                    //login state
                    Text("Your login").font(.subheadline)

                    
                    //follow
                    HStack{
                        Image(systemName: "photo")
                        
                        Text("2 ").font(.headline).bold() +
                            Text("followers").font(.subheadline)
                        Text("·")
                        Text("1 ").font(.headline).bold() +
                            Text("following").font(.subheadline)
                     
                        
                        
                        
                    }.offset(x: 0, y: 15)
                    
                    
                    
                    
                    //Email
                    HStack{
                        
                        Image(systemName: "photo")
                        
                        Text("your_email@gmail.com").bold()
                        
                        
                        
                        
                    }.offset(x: 0, y: 15.0)
                    
                    
                    
                    
                    
                    
                }.offset(x: 30, y: -65)
        
                Spacer()
            }
            
         
                .navigationBarTitle("Github", displayMode: .inline)
            
        }
        
        
       
        
    }
    
    
}


struct MinePageContentView_Previews: PreviewProvider {
    static var previews: some View {
        MinePageContentView()
    }
}
