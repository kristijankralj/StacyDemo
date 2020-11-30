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
      TabView {
        ForEach(0 ..< onboardingData.count) { index in
          let element = onboardingData[index]
          OnboardingCard(onboardingItem: element)
        }
      }
      .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
      .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
  }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
      OnboardingView()
    }
}

fileprivate struct OnboardingCard: View {
  let onboardingItem: OnboardingItem
  
  var body: some View {
    VStack {
      Image(onboardingItem.imageName)
        .resizable()
        .frame(height: 400)
        .frame(maxWidth: .infinity)
      Text(onboardingItem.title)
        .font(.title)
        .foregroundColor(Color("title"))
        .bold()
        .padding()
      Text(onboardingItem.description)
        .multilineTextAlignment(.center)
        .font(.body)
        .foregroundColor(Color("text"))
        .padding(.horizontal, 15)
    }
  }
}
