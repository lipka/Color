import XCTest
import SwiftUI
@testable import Color

final class HexComponentsTests: XCTestCase {
    func testHex() {
        let c = HexComponents(hex: "FF00FF")
        XCTAssertEqual(c.red, 1)
        XCTAssertEqual(c.green, 0)
        XCTAssertEqual(c.blue, 1)
    }

    func testHexAccuracy() {
        let c = HexComponents(hex: "804020")
        XCTAssertEqual(c.red, 0.5, accuracy: 0.01)
        XCTAssertEqual(c.green, 0.25, accuracy: 0.01)
        XCTAssertEqual(c.blue, 0.125, accuracy: 0.01)
    }

    func testHexShort() {
        let c = HexComponents(hex: "F0F")
        XCTAssertEqual(c.red, 1)
        XCTAssertEqual(c.green, 0)
        XCTAssertEqual(c.blue, 1)
    }
}
