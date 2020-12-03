//
//  LoginView.swift
//  StacyDemo
//
//  Created by Kristijan Kralj on 01/12/2020.
//

import SwiftUI

struct LoginView: View {
  @State var email: String = ""
  @State var password: String = ""
  
    var body: some View {
      VStack {
        HStack {
          Text("Hi,\nWelcome back!")
            .font(.largeTitle)
            .bold()
            .foregroundColor(.title)
            .padding(.bottom, 30)
            .padding(.leading, 20)
          Spacer()
        }
        VStack {
          TextField("Email address", text: $email)
            .font(.title3)
            .padding(8)
            .overlay(RoundedRectangle(cornerRadius: 8)
                      .stroke(Color.text.opacity(0.7), lineWidth: 1))
            .padding(.horizontal, 20)
          
          SecureField("Password", text: $password)
            .font(.title3)
            .padding(8)
            .overlay(RoundedRectangle(cornerRadius: 8)
                      .stroke(Color.text.opacity(0.7), lineWidth: 1))
            .padding(.horizontal, 20)
        }
      }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}