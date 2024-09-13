//
//  SocialNetworkApp.swift
//  SocialNetwork
//
//  Created by Глеб Клыга on 13.09.24.
//

import SwiftUI

@main
struct SocialNetworkApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
