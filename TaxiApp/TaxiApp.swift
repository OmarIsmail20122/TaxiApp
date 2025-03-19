//
//  TaxiAppApp.swift
//  TaxiApp
//
//  Created by MacBookPro on 13/03/2025.
//

import SwiftUI

@main
struct TaxiApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ChangeLangView()
            }
            .navigationViewStyle(.stack)
        }
    }
}
