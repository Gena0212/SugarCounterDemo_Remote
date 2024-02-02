//
//  NewTreatView.swift
//  SugarCounter
//
//  Created by User on 2024-01-14.
//

import SwiftUI

struct NewTreatView: View {
    @StateObject var viewModel = NewTreatViewViewModel()
    @Binding var newTreatPresented: Bool
    
    var body: some View {
        VStack{
            Text("New Treat")
                .font(.system(size: 32))
                .padding(30)
            
            Form {
                TextField("Treat Name", text: $viewModel.treatName)
                    .textFieldStyle(.roundedBorder)
                
                DatePicker("Date consumed", selection: $viewModel.date)
                    .datePickerStyle(CompactDatePickerStyle())
                
                SCButtonView(
                    
                    title: "Add Treat",
                    backgroundColor: Color.teal) {
                        
                        if viewModel.canSave {
                            viewModel.save()
                            newTreatPresented = false
                        } else {
                            viewModel.showAlert = true
                        }
                        
                }
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Error"), message: Text("Please add a treat name."))
            }
            
        }
    }
}

#Preview {
    NewTreatView(newTreatPresented: Binding(get: {
        return true
    }, set: {_ in
        
    }))
}
