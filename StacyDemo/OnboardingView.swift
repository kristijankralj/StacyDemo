//
//  OnboardingView.swift
//  StacyDemo
//
//  Created by Kristijan Kralj on 30/11/2020.
//

import SwiftUI

struct OnboardingView: View {
  
  var onboardingData: [OnboardingItem] = [
    OnboardingItem(imageName: "onb_find_place", title: "Find Places to Live", description: "Find great verified places & people to share the home with."),
    OnboardingItem(imageName: "onb_match", title: "Match Your Preferencs", description: "Tell us your preferences and match with the right people."),
    OnboardingItem(imageName: "onb_like", title: "Like-minded People", description: "Live together with people who will inspire like you.")
  ]
  
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
