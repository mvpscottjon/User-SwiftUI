//
//  UserListVM.swift
//  UserSwiftUI
//
//  Created by Seven on 2021/9/23.
//

import Foundation

class UserListVM: NSObject, ObservableObject {

    @Published private(set) var users: [UserListModel] = []
    
    
    override init() {
        super.init()
    }
    
}


extension UserListVM{
    
    func loadUserList(){
        print("有跑loadUserList哦")
   
        UserService.shared.getUserList(token: Constants.token, completion: {arr , err in
            
            guard err == nil else {return}
            
            DispatchQueue.main.async {
                self.users = arr ?? []

            }
            
            
        })
        
        
    }
    
    
}
