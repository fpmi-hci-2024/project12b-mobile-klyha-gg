//
//  TitleView.swift
//  SocialNetwork
//
//  Created by Глеб Клыга on 17.09.24.
//

import SwiftUI

struct TitleView: View {
    
    init() {}
    
    var body: some View {
        Text("Общайтесь с друзьями\nи близкими легко")
            .font(.system(size: 24, weight: .bold))
            .frame(width: 280, height: 58)
            .multilineTextAlignment(.center)
            .padding()
    }
}

#Preview {
    TitleView()
}

