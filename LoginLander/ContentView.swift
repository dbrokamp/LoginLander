//
//  ContentView.swift
//  LoginLander
//
//  Created by Drew Brokamp on 8/14/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var loginSheetIsPresented = false
    @State var signupSheetIsPresented = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        signupSheetIsPresented = true
                    }, label: {
                        ButtonText(text: "Sign Up")
                    })
                    .sheet(isPresented: $signupSheetIsPresented, content: {
                        SignupView(signupSheetIsPresented: $signupSheetIsPresented)
                    })
                    
                }
                Spacer()
            }
            VStack(spacing: 50) {
                
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text("Welcome.")
                            .foregroundColor(Color("TitleColor"))
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .kerning(-1.0)
                        
                    }
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        .kerning(-1.0)
                        .font(.body)
                        .foregroundColor(Color("BodyColor"))
                }
                HStack {
                    Button(action: {
                        loginSheetIsPresented = true
                    }, label: {
                        ButtonText(text: "Login")
                    })
                    .sheet(isPresented: $loginSheetIsPresented, content: {
                        LoginView(loginSheetIsPresented: $loginSheetIsPresented)
                    })
                    
                    
                }

            }
            .padding(.leading, 40)
            .padding(.trailing, 40)
        }
        
    }
}

struct ButtonText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .frame(minWidth: 125, minHeight: 50)
            .background( ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            })
            .cornerRadius(30.0)
            .foregroundColor(.white)
            .shadow(color: .gray, radius: 5, x: 3, y: 3)
            .font(.headline)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


