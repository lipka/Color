import XCTest
@testable import Color

final class UIColorTests: XCTestCase {
    func testHex() {
        let c = components(UIColor(hex: "FF00FF"))
        XCTAssertEqual(c.red, 1)
        XCTAssertEqual(c.green, 0)
        XCTAssertEqual(c.blue, 1)
    }

    func testHexShort() {
        let c = components(UIColor(hex: "F0F"))
        XCTAssertEqual(c.red, 1)
        XCTAssertEqual(c.green, 0)
        XCTAssertEqual(c.blue, 1)
    }

    private func components(_ color: UIColor) -> (red: CGFloat, green: CGFloat, blue: CGFloat) {
        var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
        color.getRed(&r, green: &g, blue: &b, alpha: &a)
        return (red: r, green: g, blue: b)
    }
}
