//
//  ContentView.swift
//  CustomEnvironmentKeys
//
//  Created by Yunus Emre Taşdemir on 6.07.2023.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.safeArea) var safeArea
    var body: some View {
        NavigationStack {
            Color.red
                .navigationTitle("EnvironmentKey")
                .overlay {
                    Text("Top = \(safeArea.top)\nBottom = \(safeArea.bottom)")
                    NavigationLink {
                        DetailView()
                    } label: {
                        Text("Detail View")
                    }
                    .offset (y: 40)
                }
        }
    }
}

struct DetailView: View {
    @Environment(\.safeArea) var safeArea
    var body: some View {
        Color.blue
            .navigationTitle("Detail View")
            .overlay {
                Text("Top = \(safeArea.top)\nBottom = \(safeArea.bottom)")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
