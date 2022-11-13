//
//  TipCalculatorApp.swift
//  TipCalculator
//
//  Created by Devindi Jayawardena on 2022-11-13.
//

import SwiftUI

@main
struct TipCalculatorApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
