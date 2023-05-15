//
//  SwiftUIView.swift
//  MyCard
//
//  Created by Peiyun on 2023/5/15.
//

import SwiftUI

struct InfoView: View {
    let text:String
    let image:String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName:image)
                    .foregroundColor(.green)
                Text(text)
            })
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", image: "phone.fill")
        //previewLayout:預覽畫面
            .previewLayout(.sizeThatFits)
    }
}
