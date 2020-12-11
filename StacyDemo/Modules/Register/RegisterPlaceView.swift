//
//  RegisterPlaceView.swift
//  StacyDemo
//
//  Created by Kristijan Kralj on 10/12/2020.
//

import SwiftUI

struct RegisterPlaceView: View {
  @EnvironmentObject var onboardingDetails: UserOnboardingDetails
  
    var body: some View {
      Text("Hello, world!")
        .onAppear {
          print(onboardingDetails.roomType)
        }
    }
}

struct RegisterPlaceView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPlaceView()
          .environmentObject(UserOnboardingDetails())
    }
}
