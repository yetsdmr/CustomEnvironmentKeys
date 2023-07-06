//
//  CustomEnvironmentKeysApp.swift
//  CustomEnvironmentKeys
//
//  Created by Yunus Emre Taşdemir on 6.07.2023.
//

import SwiftUI

@main
struct CustomEnvironmentKeysApp: App {
    var body: some Scene {
        // MARK: Now You can Able To Use Custom Environment Keys Anywhere in the SwiftUI View
        @Environment(\.safeArea) var safeArea
        WindowGroup {
            GeometryReader {
                let safeArea = $0.safeAreaInsets
                ContentView()
                    .padding(safeArea)
                    .environment(\.safeArea, safeArea)
                    .ignoresSafeArea(.container, edges: .all)
            }
        }
    }
}

fileprivate struct SafeAreaValue: EnvironmentKey {
    static var defaultValue: EdgeInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
}

extension EnvironmentValues {
    var safeArea: EdgeInsets {
        get {
            self[SafeAreaValue.self]
        }
        set {
            self[SafeAreaValue.self] = newValue
        }
    }
}
