import SwiftUI

@available(iOS 13.0, *)
public extension Color {
    init(hex: String, alpha: Double = 1) {
        let components = HexComponents(hex: hex)

        self.init(
            .sRGB,
            red: components.red,
            green: components.green,
            blue: components.blue,
            opacity: alpha
        )
    }
}
