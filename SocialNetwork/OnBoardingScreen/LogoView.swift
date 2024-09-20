//
//  LogoView.swift
//  SocialNetwork
//
//  Created by Глеб Клыга on 17.09.24.
//

import SwiftUI

struct LogoView: View {
    
    init() {}
    
    var body: some View {
        Image("Illustration")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 262, height: 271)
    }
}

#Preview {
    LogoView()
}

