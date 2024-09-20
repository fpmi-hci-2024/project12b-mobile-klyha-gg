//
//  LoaderManager.swift
//  SocialNetwork
//
//  Created by Глеб Клыга on 18.09.24.
//

import SwiftUI

class LoaderManager: ObservableObject {
    
    enum LoadingStateType: Equatable {
        case hidden
        case standard(message: String = "Loading...")
        case glassed
    }
    
    @Published var loadingState: LoadingStateType = .hidden
}
