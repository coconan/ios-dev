//
//  DesignCodeiOS15App.swift
//  DesignCodeiOS15
//
//  Created by Meng To on 2021-10-14.
//

import SwiftUI

@main
struct DesignCodeiOS15App: App {
    @StateObject var model = Model()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
