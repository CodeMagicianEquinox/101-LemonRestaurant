//
//  ContentView.swift
//  LemonRestaurant-ch7
//
//  Created by Timothy Terrance on 2/9/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.system(size: 50))
                .foregroundStyle(.green)
            HStack{
                Text("Hello, Cohort 7!")
                Text("This is my first app on 101")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
