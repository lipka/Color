import XCTest
import SwiftUI
import UIKit
@testable import Color

final class DynamicTests: XCTestCase {
    @available(iOS 14.0, *)
    func testDynamicColor() {
        let c = Color(light: Color.black, dark: Color.white)
        let rc = UIColor(c).resolvedColor(with: UITraitCollection(userInterfaceStyle: .dark))

        var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, o: CGFloat = 0
        rc.getRed(&r, green: &g, blue: &b, alpha: &o)

        XCTAssertEqual(r, 0)
        XCTAssertEqual(g, 0)
        XCTAssertEqual(b, 0)
        XCTAssertEqual(o, 1)
    }

    @available(iOS 13.0, *)
    func testDynamicUIColor() {
        let c = UIColor(light: UIColor.black, dark: UIColor.white)
        let rc = c.resolvedColor(with: UITraitCollection(userInterfaceStyle: .dark))

        XCTAssertEqual(rc, UIColor.white)
    }
}
