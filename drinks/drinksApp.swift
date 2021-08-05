//
//  drinksApp.swift
//  drinks
//
//  Created by Vienna Wong on 8/2/21.
//

import SwiftUI

@main
struct drinksApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(drinks: myDrinks)
        }
    }
}
