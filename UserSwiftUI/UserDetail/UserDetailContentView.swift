//
//  UserDetailContentView.swift
//  UserSwiftUI
//
//  Created by Seven on 2021/9/23.
//

import SwiftUI
//import RxSwift
//import XCTest

struct UserDetailContentView: View {
    
    
//    @Binding var isPresented: Bool

    @ObservedObject  var  viewModel = UserDetailVM()
    
    @Environment(\.presentationMode) var presentationMode
    
//    @Binding var user:UserListModel?
    
    
//
    private let _user:UserListModel?

    init(user:UserListModel?){


//        print("userDetail init囉" , user?.login)
        self._user = user


        
        self.viewModel.loadUserDetail(login: user?.login)

    }
 
    
    var body: some View {


        VStack{
            
 
            
            
            VStack{
                //btnDismiss
                HStack{
                    Button(  action: {
                        //                    self.isPresented = false
                        self.presentationMode.wrappedValue.dismiss()
                    }){
                        Image(systemName: "multiply")
                            .resizable()
                            .foregroundColor(.black)
                        
                    }.frame(width: 20, height: 20, alignment: .leading).offset(x: 30, y: 0)
                    
                    Spacer()
                }
                
                //userPhoto

                CustomImageView(withURL: viewModel.userDetail?.userPhotoURL?.absoluteString ?? "")

//                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 150, height: 150, alignment: .center)
                
                Text(viewModel.userDetail?.fullName ?? "").padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
            }
            
            
        
            Divider().frame( maxHeight: 2).background(Color.init(#colorLiteral(red: 0.7259553671, green: 0.7456251979, blue: 0.7582300305, alpha: 1))).padding(.top, 50)
        
            HStack{
            VStack(alignment:.leading){
             
                Spacer(minLength: 10)
                
                //nickName

                Label(viewModel.userDetail?.login ?? "" , systemImage: "person.fill")
                
                Spacer()
                
                //Location
        
                Label(viewModel.userDetail?.location ?? "", systemImage: "location.fill")
                Spacer()
                //Link
                Label(self.viewModel.userDetail?.link ?? "", systemImage: "link")
                Spacer()
                
            }.frame(width:  UIScreen.main.bounds.width , height: 300, alignment: .leading)
            .offset(x: 70, y: 0)
                
                Spacer()
            }
            
            
            Spacer()
        }.offset(x: 0, y: 30)

    
        
    }
}

//struct UserDetailContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserDetailContentView(user: Binding<UserListModel?>(nil))
//    }
//}
