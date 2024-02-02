//
//  TreatView.swift
//  SugarCounter
//
//  Created by User on 2024-01-14.
//

import SwiftUI

struct TreatView: View {
    let item: Treats
    
    var body: some View {
        HStack{
            Text(item.title)
        }
    }
}

#Preview {
    TreatView(item: .init(id: "123",
                          title: "coffee cake",
                          dateConsumed: Date().timeIntervalSince1970,
                          createdDate: Date().timeIntervalSince1970))
}
