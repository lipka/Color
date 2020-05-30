import UIKit

public extension UIColor {
    func adjust(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        return UIColor(red: r + red, green: g + green, blue: b + blue, alpha: a + alpha)
    }

    func adjust(_ adjustment: CGFloat) -> UIColor {
        return adjust(red: adjustment, green: adjustment, blue: adjustment, alpha: 0)
    }
}
