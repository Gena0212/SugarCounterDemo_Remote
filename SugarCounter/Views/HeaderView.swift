//
//  HeaderView.swift
//  SugarCounter
//
//  Created by User on 2024-01-14.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let backgroundColor: Color

    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .opacity(0.6)
                //.offset(y:-115)
            Text(title)
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
        .frame(width: UIScreen.main.bounds.width*3,
               height: 200)
        .padding(65)
        //.offset(y:-75)
    }
}

#Preview {
    HeaderView(title: "Title", backgroundColor: .pink)
}
