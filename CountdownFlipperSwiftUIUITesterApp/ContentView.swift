//
//  ContentView.swift
//  CountdownFlipperSwiftUIUITesterApp
//
//  Created by Kavinda Dilshan on 2024-11-12.
//

import SwiftUI
import CountdownFlipperSwiftUI

struct ContentView: View {
    @State private var counter: Int = 0
    
    var body: some View {
        VStack(spacing: 50) {
            TimeView()
            
            CountdownFlipperView(flipperType: .flipFromTop, counter: $counter, fontSize: 200)
            
            Button("Generate Random Number: \(counter)") {
                counter = .random(in: 0...9)
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
        }
    }
}

#Preview {
    ContentView()
}
