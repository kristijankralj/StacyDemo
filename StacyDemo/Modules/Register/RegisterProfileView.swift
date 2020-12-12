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
  
  let gender = ["Male", "Female", "Other"]
  
    var body: some View {
      ScrollView {
        VStack(spacing: 16) {
          TextField("Full Name", text: $fullName)
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
        }
        .padding()
      }
    }
}

struct RegisterProfileView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterProfileView()
    }
}
