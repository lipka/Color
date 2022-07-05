import SwiftUI

@available(iOS 14.0, *)
extension Color {
    init(
        light lightColor: @escaping @autoclosure () -> Color,
        dark darkColor: @escaping @autoclosure () -> Color
    ) {
        self.init(UIColor(
            light: UIColor(lightColor()),
            dark: UIColor(darkColor())
        ))
    }
}
