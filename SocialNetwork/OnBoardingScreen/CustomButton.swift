//
//  CustomButton.swift
//  SocialNetwork
//
//  Created by Глеб Клыга on 13.09.24.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var backgroundColor: Color
    var textColor: Color
    var action: () -> Void
    
    init(title: String, backgroundColor: Color, textColor: Color, action: @escaping () -> Void) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .padding()
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .font(.headline)
                .cornerRadius(30)
                .padding(.horizontal)
        }
    }
}

#Preview {
    CustomButton(title: "Продолжить", backgroundColor: .purple, textColor: .white, action: {})
        .previewLayout(.sizeThatFits)
}
