//
//  LauchScreenView.swift
//  SocialNetwork
//
//  Created by Глеб Клыга on 13.09.24.
//

import SwiftUI


struct LauchScreenView: View {
    var body: some View {
        VStack {
            LogoView()
                .padding(.top, 140)
            TitleView()
                .padding(.top, 42)
            TermsOfServiceView()
                .padding(.top, 10)
            CustomButton(title: "Начать общаться", backgroundColor: .wbDefaultPurple, textColor: .wbWhite, action: signIn)
                .padding(.bottom, 50)
        }
        .padding()
    }
    
    private func signIn() {
        
    }
}

#Preview {
    LauchScreenView()
}
