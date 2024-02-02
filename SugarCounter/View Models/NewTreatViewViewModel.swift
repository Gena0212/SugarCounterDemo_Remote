//
//  NewTreatViewViewModel.swift
//  SugarCounter
//
//  Created by User on 2024-01-14.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class NewTreatViewViewModel: ObservableObject {
    @Published var treatName = ""
    @Published var date  = Date()
    @Published var showAlert = false

    
    init() {}
    func save() {
        guard canSave else {
            return
        }
        
        //Get current user id
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        //Create model
        let newId = UUID().uuidString
        let newItem = Treats(
            id: newId,
            title: treatName,
            dateConsumed: date.timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970)
        
        //Save model
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uId)
            .collection("Treats")
            .document(newId)
            .setData(newItem.asDictionary())
    }
    var canSave: Bool {
        guard !treatName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else{
            return false
        }
        
        return true
    }
    
}
