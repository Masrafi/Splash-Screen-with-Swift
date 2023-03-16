//
//  SplashView.swift
//  Splash Screen
//
//  Created by user on 3/16/23.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            Text("ContentView")
                .foregroundColor(.white)
                .font(.system(size: 30))
                .bold()
                .padding()
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
