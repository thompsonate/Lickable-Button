//
//  LickableButtonColor.swift
//  LickableButton
//
//  Created by Nate Thompson on 6/9/21.
//

import SwiftUI

enum LickableButtonColor {
    case `default`
    case highlighted
    case pressed

    var backgroundGradient: Gradient {
        switch self {
        case .default:
            return Gradient(stops: [
                .init(color: Color(.displayP3, red: 0.8, green: 0.8, blue: 0.8), location: 0),
                .init(color: Color(.displayP3, red: 0.98, green: 0.98, blue: 0.98), location: 0.75),
                .init(color: Color.white, location: 0.8),
            ])
        case .highlighted:
            return Gradient(stops: [
                .init(color: Color(.displayP3, red: 0.45, green: 0.60, blue: 0.78), location: 0),
                .init(color: Color(.displayP3, red: 0.55, green: 0.73, blue: 0.91), location: 0.5),
                .init(color: Color(.displayP3, red: 0.78, green: 0.91, blue: 0.98), location: 1),
            ])
        case .pressed:
            return Gradient(stops: [
                .init(color: Color(.displayP3, red: 0.33, green: 0.56, blue: 0.78), location: 0),
                .init(color: Color(.displayP3, red: 0.44, green: 0.62, blue: 0.82), location: 0.5),
                .init(color: Color(.displayP3, red: 0.75, green: 0.88, blue: 0.96), location: 1),
            ])
        }
    }
    
    var shineGradient: Gradient {
        switch self {
        case .default:
            return Gradient(colors: [
                .white,
                Color.white.opacity(0.5)
            ])
        case .highlighted:
            return Gradient(colors: [
                Color(.sRGB, red: 0.78, green: 0.86, blue: 0.98),
                Color(.sRGB, red: 0.64, green: 0.78, blue: 0.93),
            ])
        case .pressed:
            return Gradient(colors: [
                Color(.sRGB, red: 0.85, green: 0.91, blue: 0.98),
                Color(.sRGB, red: 0.60, green: 0.73, blue: 0.86),
            ])
        }
    }
    
    var outlineGradient: Gradient {
        switch self {
        case .default:
            return Gradient(colors: [Color(.sRGB, red: 0.36, green: 0.36, blue: 0.36)])
        case .highlighted, .pressed:
            return Gradient(stops: [
                .init(color: Color(.sRGB, red: 0, green: 0.11, blue: 0.35), location: 0.45),
                .init(color: Color(.sRGB, red: 0.36, green: 0.36, blue: 0.36), location: 0.55)
            ])
        }
    }
}
