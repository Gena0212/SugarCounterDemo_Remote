//
//  SCButtonView.swift
//  SugarCounter
//
//  Created by User on 2024-01-17.
//

import SwiftUI

struct SCButtonView: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        }label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(backgroundColor)
                    Text(title)
                        .bold()
                        .foregroundColor(.white)
                }
        }
        //.padding(1)

    }
}

#Preview {
    SCButtonView(title: "Button Title", backgroundColor: .indigo){
        
    }
}
