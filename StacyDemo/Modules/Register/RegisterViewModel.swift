//
//  RegisterViewModel.swift
//  StacyDemo
//
//  Created by Kristijan Kralj on 15/12/2020.
//

import Foundation

class RegisterViewModel: ObservableObject {
  @Published var fullName = ""
  @Published var phoneNumber = ""
  @Published var selectedGender = 0
  @Published var email = ""
  @Published var password = ""
  @Published var confirmPassword = ""
  @Published var moreAboutYou = ""
  
  let gender = ["Male", "Female", "Other"]
}
