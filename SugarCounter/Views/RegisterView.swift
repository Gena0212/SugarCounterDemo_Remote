//
//  RegisterView.swift
//  SugarCounter
//
//  Created by User on 2024-01-14.
//

import SwiftUI

struct RegisterView: View {
    @State var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            HeaderView(title: "Register", backgroundColor: .blue)
            
            Form {
                TextField("Full name", text: $viewModel.name)
                    .textFieldStyle(PlainTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(PlainTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(PlainTextFieldStyle())
                 
                SCButtonView(
                    title: "Create Account",
                    backgroundColor: .orange
                ){
                    viewModel.register()
                }
                
            }
            .offset(y: -40)
        }
    }
}

#Preview {
    RegisterView()
}
