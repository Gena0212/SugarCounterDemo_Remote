//
//  SugarCounterView.swift
//  SugarCounter
//
//  Created by User on 2024-01-14.
//
import FirebaseFirestoreSwift
import SwiftUI

struct SugarCounterView: View {
    @StateObject var viewModel = SugarCounterViewViewModel()
    @FirestoreQuery var items: [Treats]
    
    init(userId: String) {
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/Treats")
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List(items) { item in
                    Text(item.title)
                }
                .listStyle(PlainListStyle())
            }
            
            .navigationTitle("Sugar Counter")
            .toolbar{
                Button{
                    viewModel.showingNewItemView = true
                } label: {
                     Image(systemName: "plus")
                }
            }
            .sheet(isPresented:  $viewModel.showingNewItemView ) {
                NewTreatView(newTreatPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    SugarCounterView(userId: "3E5FKxaojiTjQGdoPkV4rNKJn7l2")
}
