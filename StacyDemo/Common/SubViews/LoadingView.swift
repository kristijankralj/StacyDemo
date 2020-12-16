//
//  LoadingView.swift
//  StacyDemo
//
//  Created by Kristijan Kralj on 16/12/2020.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        LottieView(animationName: "phone")
          .frame(width: 260, height: 260)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
