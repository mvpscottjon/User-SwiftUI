//
//  UserDetailVM.swift
//  UserSwiftUI
//
//  Created by Seven on 2021/9/24.
//

import Foundation

class UserDetailVM: ObservableObject {
    
    
    @Published private(set) var userDetail:UserDetailSubVM?
    
    init(){
    
        
    }
    
    
    
}


extension UserDetailVM{
    
    func loadUserDetail(login:String?){
        
//        print("跑loadUserDetail," , login)
        
        UserService.shared.getUser(login: login, completion: { obj, err in
            
            guard err == nil else {return}
            
            
//            print("回來了哦",obj)
            
            DispatchQueue.main.async {
                self.userDetail = UserDetailSubVM(user: obj)

            }
            
        })
        
        
    }
    
    
}
