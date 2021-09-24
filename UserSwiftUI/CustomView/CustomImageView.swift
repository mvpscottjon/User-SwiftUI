//
//  CustomImageView.swift
//  UserSwiftUI
//
//  Created by Seven on 2021/9/24.
//


import SwiftUI
import Combine


struct CustomImageView: View {
    @ObservedObject var imageLoader:ImageLoader
    @State var image:UIImage = UIImage()

    init(withURL url:String) {
        imageLoader = ImageLoader(urlString:url)
    }

    var body: some View {
        
            Image(uiImage: image)
                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width:100, height:100)
                .onReceive(imageLoader.didChange) { data in
                self.image = UIImage(data: data) ?? UIImage()
        }
    }
}
