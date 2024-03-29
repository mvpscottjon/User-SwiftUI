//
//  UserListContentView.swift
//  UserSwiftUI
//
//  Created by Seven on 2021/9/22.
//

import SwiftUI

struct UserListContentView: View {
    
    @ObservedObject var viewModel: UserListVM = UserListVM()

    
    @State private var selectedUser:UserListModel?
    @State private var showModal:Bool = false
    
    @SwiftUI.Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>

    init(){
        
        print("list init囉")
    }
    
    
    
    var body: some View {
        
      
     
        //MARK: List
        
        
        
        Group{
            
            List(viewModel.users) {
                user in
               
                
                
                UserRowContentView(user: user)
           
                    .onTapGesture {
//                        print("row tap", user)
                        self.selectedUser = user
                        self.showModal.toggle()
                    }
                    
                
                    .onAppear(perform: {
                        self.viewModel.loadMoreUserList()
                        
                        
                    })
                
                
                
            }
            
            
            .environment(\.defaultMinListRowHeight, 80)
            
            
            
        }
        
        .sheet(isPresented: $showModal, content: {
            
            
            
            UserDetailContentView(user: self.$selectedUser.wrappedValue)
            
        
            
        })
      
     
            
    }
}

struct UserListContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserListContentView()
    }
}





struct UserRowContentView: View {
    
    var user:UserListModel?

    init(user:UserListModel?){
        self.user = user
        
//        print("看一下初始化user,",user)
        
    }
    
    var body: some View {
        
        
        HStack{
            
            //photo
//            Image(systemName: "photo")
            RemoteImage(url: user?.avatar_url ?? "")
//                .resizable()
//                .scaledToFill()
                .frame(width: 50, height: 50, alignment: .center)
                .clipShape(Circle())
                .border(Color.black, width: 0)
            
            //userData
            VStack(alignment: .leading){
                Text(user?.login ?? "")
                Text(user?.type ?? "").font(.subheadline).foregroundColor(.gray)
          
            }
            
           Spacer()
            
        }
        .background(Color.white)
    }

}



