//
//  MinePageVM.swift
//  UserSwiftUI
//
//  Created by Seven on 2021/9/18.
//

import Foundation

class MinePageVM :ObservableObject {
    
    @Published private(set) var userDetail:UserDetailSubVM?

//    private let service : UserService
    
    init() {
        self.loadMyUserData()

    }
    
    
    
    
    
    
    
}


extension MinePageVM{
    
    func loadMyUserData(){
        
        
        UserService.shared.getUser(login: "mvpscottjon", token: Constants.token, completion: {obj, err in
            
            
            DispatchQueue.main.async {
                self.userDetail = UserDetailSubVM(user: obj)

            }
            
            
        })
        
        
    }
    
    
    
}


