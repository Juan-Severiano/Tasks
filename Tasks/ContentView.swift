//
//  ContentView.swift
//  Tasks
//
//  Created by user on 12/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "microphone.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world on SwiftUI!")
            Image(systemName: "microphone.fill")
                .imageScale(.large)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
