//
//  LoginView.swift
//  SugarCounter
//
//  Created by User on 2024-01-14.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()

    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title: "Sugar Counter", backgroundColor: .pink)
                
                
                
                //Login Form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(PlainTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(PlainTextFieldStyle())
                    SCButtonView(
                        title: "Log In",
                        backgroundColor: .mint
                    ){
                        viewModel.login()
                    }
                }
                .offset(y: -30)
                
                
                
                //Create Account
                NavigationLink("Create an account",
                               destination: RegisterView())
                .padding(50)
            
            }
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
