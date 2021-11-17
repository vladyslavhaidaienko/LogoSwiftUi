//
//  AwardsView.swift
//  Logo
//
//  Created by Vladyslav Haidaienko on 16.11.2021.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.init(white: 0.75)
                    .ignoresSafeArea()
                VStack {
                    ScrollView {
                        LogoVH()  // мои инициалы Vladyslav Haidaienko - VH
                            .frame(width: 200, height: 200)
                            .padding(.bottom, 30)
//                        Stop()
//                            .frame(width: 200, height: 200)
//                            .padding(.bottom, 30)
                        ColorsView()
                            .frame(width: 200, height: 200)
                    }
                }
                .navigationBarTitle("Pictures")
            }
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
