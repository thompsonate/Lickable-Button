//
//  LickableButtonStyle.swift
//  LickableButton
//
//  Created by Nate Thompson on 6/9/21.
//

import SwiftUI

struct LickableButtonStyle: ButtonStyle {
    let isDefaultAction: Bool
    var buttonColor: LickableButtonColor
    
    @State var buttonPulse = false
    
    init(isDefaultAction: Bool = false) {
        self.isDefaultAction = isDefaultAction
        buttonColor = isDefaultAction ? .highlighted : .default
    }
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            ButtonBackground(color: buttonColor)
            
            if isDefaultAction {
                Capsule()
                    .fill(Color.white)
                    .animation(nil)
                    .opacity(buttonPulse ? 0.2 : 0)
                    .animation(.easeInOut(duration: 0.5).repeatForever())
            }
            
            if configuration.isPressed {
                ButtonBackground(color: .pressed)
            }
            
            Capsule()
                .stroke(LinearGradient(
                          gradient: configuration.isPressed ?
                            LickableButtonColor.pressed.outlineGradient :
                            buttonColor.outlineGradient,
                          startPoint: .top,
                          endPoint: .bottom))

            configuration.label
                .foregroundColor(.black)
                .font(.custom("Lucida Grande", size: 12))
        }
        .clipShape(Capsule())
        .frame(height: 20)
        .shadow(color: Color(.sRGB, red: 0.71, green: 0.71, blue: 0.71),
                radius: 0.5, x: 0, y: 1)
        .onAppear {
            if isDefaultAction {
                buttonPulse = true
            }
        }
    }
}

struct LickablebuttonStyle_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 200, height: 100))
    }
}
