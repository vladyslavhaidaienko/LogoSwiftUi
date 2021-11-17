//
//  MainView.swift
//  Logo
//
//  Created by Vladyslav Haidaienko on 16.11.2021.
//

import SwiftUI

struct MainView: View {
    @State private var showAward = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(showAward ? "Hide Logo" : "Show Logo")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(showAward ? 2 : 1)
                        .rotationEffect(.degrees(showAward ? 0 : 180))
                }
            }
            
            Spacer()
            if showAward {
                LogoVH()       // мои инициалы Vladyslav Haidaienko - VH
                    .frame(width: 200, height: 200)
                    .transition(.myAnimation)
            }
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            showAward.toggle()
        }
    }
}

extension AnyTransition {
    static var myAnimation: AnyTransition {
        let insertion = AnyTransition.slide
            .combined(with: .scale(scale: 3, anchor: .center))
        let removal = AnyTransition.move(edge: .bottom)
            .combined(with: .opacity)
            .combined(with: .scale(scale: 0.8))
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
