//
//  ContentView.swift
//  MyCard
//
//  Created by Peiyun on 2023/5/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 1.00, green: 0.46, blue: 0.46, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                //overlay：覆蓋某物於圖片上
                //stroke：設為邊框
                Image("image").resizable().aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5))
                Text("Peiyun")
                    .font(.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                //Divider()：切割畫面
                Divider()
                InfoView(text: "+886 912 345 678", image: "phone.fill")
                InfoView(text: "peiyun@mail.com", image: "mail.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


