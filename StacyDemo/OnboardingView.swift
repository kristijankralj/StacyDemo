//
//  OnboardingView.swift
//  StacyDemo
//
//  Created by Kristijan Kralj on 30/11/2020.
//

import SwiftUI

struct OnboardingView: View {
  var body: some View {
    VStack {
      Text("Find Places to Live")
        .font(.title)
        .foregroundColor(.primary)
        .bold()
        .padding()
      Text("Find great verified places & people to share the home with.")
        .font(.body)
        .foregroundColor(.primary)
        .padding(.horizontal, 15)
    }
  }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
      OnboardingView()
    }
}
