//
//  ContentView.swift
//  Splash Screen
//
//  Created by user on 3/16/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
                    if self.isActive {
                        SplashView()
                    } else {
//                        Rectangle()
//                            .background(Color.black)
                        Image("chair_1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
