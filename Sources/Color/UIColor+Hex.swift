import UIKit

public extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1) {
        let components = HexComponents(hex: hex)

        self.init(
            red: CGFloat(components.red),
            green: CGFloat(components.green),
            blue: CGFloat(components.blue),
            alpha: alpha
        )
    }
}
