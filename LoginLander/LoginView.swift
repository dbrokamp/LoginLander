//
//  LoginView.swift
//  LoginLander
//
//  Created by Drew Brokamp on 8/14/21.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var loginSheetIsPresented: Bool
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Login.")
                    .foregroundColor(Color("TitleColor"))
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .kerning(-1.0)
                Spacer()
            }
            VStack {
                TextField("Username", text: $username)
                    .padding()
                    .background(Color("TextFieldColor"))
                    .cornerRadius(20.0)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color("TextFieldColor"))
                    .cornerRadius(20.0)
            }
            .padding()
            HStack {
                Spacer()
                Button(action: { loginSheetIsPresented = false }, label: {
                    ButtonText(text: "Login")
                })
            }
        }
        .padding()

    }
}

struct LoginView_Previews: PreviewProvider {
    
    static private var loginSheetIsPresented = Binding.constant(false)
    
    static var previews: some View {
        LoginView(loginSheetIsPresented: loginSheetIsPresented)
    }
}
