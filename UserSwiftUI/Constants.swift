//
//  Constants.swift
//  UserSwiftUI
//
//  Created by Seven on 2021/9/23.
//

import Foundation


struct Constants {
    
    
   static let token = "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"
    
    
}






extension Numeric {
    
    
    func toString() -> String? {
        
        return "\(self)"
        
        
    }
    
}


extension String{
    
    func toURL() -> URL?{
        
        
        
       return URL(string: self)
        
        
    }
    
 
    
}
