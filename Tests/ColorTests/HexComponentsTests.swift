import XCTest
import SwiftUI
@testable import Color

final class HexComponentsTests: XCTestCase {
    func testHex32Bit() {
        let c = HexComponents(hex: "FF00FF00")
        XCTAssertEqual(c.red, 1)
        XCTAssertEqual(c.green, 0)
        XCTAssertEqual(c.blue, 1)
        XCTAssertEqual(c.opacity, 0)
    }

    func testHex24Bit() {
        let c = HexComponents(hex: "FF00FF")
        XCTAssertEqual(c.red, 1)
        XCTAssertEqual(c.green, 0)
        XCTAssertEqual(c.blue, 1)
    }

    func testHex12Bit() {
        let c = HexComponents(hex: "F0F")
        XCTAssertEqual(c.red, 1)
        XCTAssertEqual(c.green, 0)
        XCTAssertEqual(c.blue, 1)
    }

    func testHexWithAccuracy() {
        let c = HexComponents(hex: "804020")
        XCTAssertEqual(c.red, 0.5, accuracy: 0.01)
        XCTAssertEqual(c.green, 0.25, accuracy: 0.01)
        XCTAssertEqual(c.blue, 0.125, accuracy: 0.01)
    }

    func testHexWithPoundSign() {
        let c = HexComponents(hex: "#FF00FF")
        XCTAssertEqual(c.red, 1)
        XCTAssertEqual(c.green, 0)
        XCTAssertEqual(c.blue, 1)
    }
}
