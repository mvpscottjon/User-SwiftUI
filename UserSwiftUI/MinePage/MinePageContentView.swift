//
//  MinePageContentView.swift
//  UserSwiftUI
//
//  Created by Seven on 2021/9/18.
//

import SwiftUI

struct MinePageContentView: View {
   
    
    @ObservedObject var viewModel: MinePageVM = MinePageVM()
    
//    @ObservedObject var imageLoader : ImageLoader
    
    @State var image:UIImage = UIImage()
    
    var body : some View {
//        Text(viewModel.countries.last ?? "Good")
        
//        ZStack(alignment: Alignment(horizontal: .center, vertical: .top), content: {
        
        
        NavigationView{
            
            
            VStack(alignment: .leading){
                

                //big photo
                HStack{
                    Spacer()
                    Image.init(uiImage: UIImage(named: "github") ?? UIImage())
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("GitHub Docs")
                        .foregroundColor(.white).font(.largeTitle)
                    
                    Spacer()
                    
                }.frame(width: .infinity, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color.init(#colorLiteral(red: 0.02263874933, green: 0.1448459029, blue: 0.2967996299, alpha: 1)))
                
                
                    //MARK:info stack
                VStack(alignment: .leading){

                    //user photo
//                    Image(uiImage: self.image)
                
                    RemoteImage(url: viewModel.userDetail?.userPhotoURL?.absoluteString ?? "")
//                        .renderingMode(.template)
//                        .resizable()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)


                    
                    
//                        .foregroundColor(.blue)
//                        .background(Color.yellow)
//
                    
                    //name
                    Text(viewModel.userDetail?.fullName ?? "")
                        .font(.title3).bold()
                    //login state
                    Text(viewModel.userDetail?.login ?? "").font(.subheadline).foregroundColor(.gray)

                    
                    //follow
                    HStack{
                        Image(systemName: "person.2")
                        
                        Text(viewModel.userDetail?.followersCount ?? "0").font(.headline).bold() +
                        Text(" followers").font(.subheadline).foregroundColor(.gray)
                        Text("·")
                        Text(viewModel.userDetail?.followingCount ?? "0").font(.headline).bold() +
                        
                        Text(" following").font(.subheadline).foregroundColor(.gray)
                        
                        
                        
                        
                    }.offset(x: 0, y: 15)
                    
                    
                    
                    
                    //Email
                    HStack{
                        
                        Image(systemName: "envelope")
                        
                        Text(viewModel.userDetail?.email ?? "").foregroundColor(.black)
                        
                        
                        
                        
                    }.padding(.top, 15).offset(x: 0, y: 15.0)
                    
                    
                    
                    
                    
                    
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
