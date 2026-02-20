//
//  AboutView.swift
//  LemonRestaurant-ch7
//
//  Created by Timothy Terrance on 2/9/26.
//

import SwiftUI

struct AboutView: View {

    var body: some View {
        VStack(spacing: 16) {

            Spacer()

            Text("About Little Lemon")
                .font(.system(size: 34,))
                .foregroundStyle(.green)

            Text("Little Lemon Stand is the most delicious lemonade stand in the land.Stop by and have a drink with us!")
                .font(.system(size: 16))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)

            HStack(spacing: 22) {
                Image(systemName: "fork.knife")
                    .font(.system(size: 26))
                    .foregroundStyle(.yellow)

                Image(systemName: "lemon")
                    .font(.system(size: 24))
                    .foregroundStyle(.yellow)

                Image(systemName: "leaf")
                    .font(.system(size: 24))
                    .foregroundStyle(.yellow)
            }
            .padding(.top, 8)

        }
    }
}

#Preview {
    NavigationStack{
        AboutView()
    }
}
