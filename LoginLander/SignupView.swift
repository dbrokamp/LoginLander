//
//  SignupView.swift
//  LoginLander
//
//  Created by Drew Brokamp on 8/14/21.
//

import SwiftUI

struct SignupView: View {
    
    @Binding var signupSheetIsPresented: Bool
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var password: String = ""

    
    var body: some View {
        VStack {
            HStack {
                Text("Sign Up.")
                    .foregroundColor(Color("TitleColor"))
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .kerning(-1.0)
                Spacer()
            }
            VStack {
                TextField("First Name", text: $firstName)
                    .padding()
                    .background(Color("TextFieldColor"))
                    .cornerRadius(20.0)
                TextField("Last Name", text: $lastName)
                    .padding()
                    .background(Color("TextFieldColor"))
                    .cornerRadius(20.0)
                TextField("Email", text: $email)
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
                Button(action: { signupSheetIsPresented = false }, label: {
                    ButtonText(text: "Sign Up")
                })
            }
        }
        .padding()
    }
}

struct SignupView_Previews: PreviewProvider {
    
    static private var signupSheetIsPresented = Binding.constant(false)
    static var previews: some View {
        SignupView(signupSheetIsPresented: signupSheetIsPresented)
    }
}
