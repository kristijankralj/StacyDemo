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
      Image("onb_find_place")
        .resizable()
        .frame(height: 400)
        .frame(maxWidth: .infinity)
      Text("Find Places to Live")
        .font(.title)
        .foregroundColor(Color("title"))
        .bold()
        .padding()
      Text("Find great verified places & people to share the home with.")
        .multilineTextAlignment(.center)
        .font(.body)
        .foregroundColor(Color("text"))
        .padding(.horizontal, 15)
    }
  }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
      OnboardingView()
    }
}
