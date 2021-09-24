//
//  UserListVM.swift
//  UserSwiftUI
//
//  Created by Seven on 2021/9/23.
//

import Foundation

class UserListVM:  ObservableObject {

    @Published private(set) var users: [UserListModel] = []
    @Published var isLoadingPage = false
    
    private var lastSinceId = 0
//    private var currentPage = 1
    private let per_page = 7

    private var canLoadMorePages = true

     init() {
         self.loadUserListFirstTime()
    }
    
}


extension UserListVM{
    
    func loadUserListFirstTime(){
//        print("有跑loadUserList哦")
   
        
        
        self.isLoadingPage = true
        
        UserService.shared.getUserList(per_page: self.per_page,since: 0,  completion: {arr , err in
            
            guard err == nil  , let arr = arr else {
                
                self.isLoadingPage = false
                self.canLoadMorePages = false
                return}

            DispatchQueue.main.async {
                self.users = arr
                
//                print("first time 看一下最後userId:",self.users.last?.id)
                
                if let lastId = self.users.last?.id {
                    
                    self.lastSinceId = lastId
                    
                }
                
                self.isLoadingPage = false
                self.canLoadMorePages = true
                

                
                
            }
            
            
        })
        
        
    }
    
    
    func loadMoreUserList(){
        
        
//        print("開始跑loadMore",self.lastSinceId)
        
        guard !isLoadingPage && canLoadMorePages else {
//            print("不用讀")
            return}
        
        
        
        
        self.isLoadingPage = true
        
        UserService.shared.getUserList(per_page:self.per_page,since: self.lastSinceId,  completion: {arr , err in
            
            
            guard err == nil , let arr = arr else {
                
                self.isLoadingPage = false
                self.canLoadMorePages = false
                
                
                return}
            
            DispatchQueue.main.async {
                self.users.append(contentsOf: arr)
                
                
//                print("load more 看一下最後userId:",self.users.last?.id)

                
                if let lastId = self.users.last?.id {
                    
                    self.lastSinceId = lastId
                    
                }
                
                self.isLoadingPage = false
                self.canLoadMorePages = true
                
                
            }
            
            
        })
        
        
        
    }
    
}
