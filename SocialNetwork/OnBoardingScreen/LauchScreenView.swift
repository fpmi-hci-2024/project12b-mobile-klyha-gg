//
//  LauchScreenView.swift
//  SocialNetwork
//
//  Created by Глеб Клыга on 13.09.24.
//

import SwiftUI


struct LauchScreenView: View {
    
    @EnvironmentObject var loaderManager: LoaderManager
    
    var body: some View {
        ZStack {
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
        }
        .padding()
    }
    
    private func signIn() {
        loaderManager.loadingState = .standard(message: "Загрузка...")
        hideLoadingWithDelay()
    }
    // Заглушка
    func hideLoadingWithDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            loaderManager.loadingState = .hidden
        }
    }
}

#Preview {
    LauchScreenView()
}
