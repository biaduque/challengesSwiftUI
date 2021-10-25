//
//  BronzeApp.swift
//  Bronze
//
//  Created by Beatriz Duque on 25/10/21.
//

import SwiftUI

@main
struct BronzeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
