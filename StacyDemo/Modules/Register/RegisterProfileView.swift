//
//  RegisterProfileView.swift
//  StacyDemo
//
//  Created by Kristijan Kralj on 11/12/2020.
//

import SwiftUI

struct RegisterProfileView: View {
  @State var fullName = ""
  @State var phoneNumber = ""
  @State var selectedGender = 0
  @State var email = ""
  @State var password = ""
  @State var confirmPassword = ""
  @State var moreAboutYou = ""
  
  let gender = ["Male", "Female", "Other"]
  
    var body: some View {
      ScrollView {
        VStack(spacing: 16) {
          TextField("Full Name", text: $fullName, onCommit: { hideKeyboard() })
            .disableAutocorrection(true)
            .textFieldStyle(RoundedBorderTextFieldStyle())
          
          TextField("Phone Number", text: $phoneNumber)
            .disableAutocorrection(true)
            .keyboardType(.phonePad)
            .textFieldStyle(RoundedBorderTextFieldStyle())
          
          VStack(alignment: .leading) {
            Text("Gender")
              .foregroundColor(.text)
            
            Picker(selection: $selectedGender,
                   label: Text("Gender")) {
              ForEach(0..<gender.count) { index in
                Text(gender[index]).tag(index)
              }
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(Color.pickerForeground)
            .cornerRadius(8)
          }
          
          TextField("Email", text: $email)
            .disableAutocorrection(true)
            .keyboardType(.emailAddress)
            .autocapitalization(.none)
            .textFieldStyle(RoundedBorderTextFieldStyle())
          
          SecureField("Password", text: $password)
            .textFieldStyle(RoundedBorderTextFieldStyle())
          
          SecureField("Confirm Password", text: $confirmPassword)
            .textFieldStyle(RoundedBorderTextFieldStyle())
          
          VStack(alignment: .leading) {
            Text("Tell me more about you")
              .foregroundColor(.text)
            TextEditor(text: $moreAboutYou)
              .frame(height: 100, alignment: .topLeading)
              .disableAutocorrection(true)
              .padding(8)
              .overlay(RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1))
          }
          
          NavigationLink(destination: HomeView()) {
            Text("REGISTER")
              .textStyle(GradientButtonStyle())
              .padding(.horizontal, -20)
              .padding(.bottom)
          }
        }
        .padding()
        .onTapGesture {
          hideKeyboard()
        }
      }
      .navigationTitle("Complete your profile")
    }
}

struct RegisterProfileView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterProfileView()
    }
}
