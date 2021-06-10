//
//  ContentView.swift
//  LickableButton
//
//  Created by Nate Thompson on 6/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 12) {
            Button("Cancel", action: {
                print("Cancel")
            })
                .buttonStyle(LickableButtonStyle())
                .frame(minWidth: 80)
            Button("OK", action: {
                print("OK")
            })
                .buttonStyle(LickableButtonStyle(isDefaultAction: true))
                .keyboardShortcut(.defaultAction)
                .frame(minWidth: 80)
        }
        .padding()
        .background(Color(.sRGB, red: 0.93, green: 0.93, blue: 0.94))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 200, height: 100))
    }
}
