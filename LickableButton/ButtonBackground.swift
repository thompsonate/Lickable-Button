//
//  ButtonBackground.swift
//  LickableButton
//
//  Created by Nate Thompson on 6/9/21.
//

import SwiftUI

struct ButtonBackground: View {
    let color: LickableButtonColor
    
    var body: some View {
        ZStack {
            Capsule()
                .fill(LinearGradient(
                        gradient: color.backgroundGradient,
                        startPoint: .top,
                        endPoint: .bottom))
            
            RoundedRectangle(cornerRadius: 5)
                .fill(LinearGradient(
                        gradient: color.shineGradient,
                        startPoint: .top,
                        endPoint: .bottom))
                .offset(y: -6)
                .frame(height: 7)
                .padding(.horizontal, 3)
        }
    }
}

struct ButtonBackground_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ButtonBackground(color: .default)
            ButtonBackground(color: .highlighted)
        }
            .previewLayout(.fixed(width: 60, height: 20))
    }
}
