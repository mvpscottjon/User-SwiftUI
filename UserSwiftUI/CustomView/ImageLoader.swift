//
//  ImageLoader.swift
//  UserSwiftUI
//
//  Created by Seven on 2021/9/24.
//

import Foundation
import Combine
class ImageLoader:ObservableObject {
    
    var didChange = PassthroughSubject<Data, Never>()
    
    
    var data = Data() {
        
        didSet {
            
            didChange.send(data)
        }
        
    }
    
    init(urlString:String){
        
        guard let url = urlString.toURL() else {return}
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: {data, response, err in
            
            guard let data = data else {return}
            
            
            DispatchQueue.main.async {
                self.data = data
            }
            
            
        })
        
        task.resume()
        
        
    }
    
    
    
}
    
    
    
    

