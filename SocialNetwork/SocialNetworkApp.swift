//
//  SocialNetworkApp.swift
//  SocialNetwork
//
//  Created by Глеб Клыга on 13.09.24.
//

import SwiftUI


@main
struct LoaderDemoApp: App {
    
    @StateObject var loaderManager = LoaderManager()
    
    var body: some Scene {
        WindowGroup {
            
            ZStack {
                LauchScreenView()
                    .environmentObject(loaderManager)
                
                switch loaderManager.loadingState {
                case .hidden:
                    EmptyView()
                case .standard(let message):
                    LoadingView(message: message)
                case .glassed:
                    LoadingViewGlassed()
                }
            }
            .animation(.default, value: loaderManager.loadingState)
        }
    }
}
