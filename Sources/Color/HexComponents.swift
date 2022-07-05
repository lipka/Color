import Foundation

struct HexComponents {
    let red: Double
    let green: Double
    let blue: Double
    let opacity: Double

    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        let scanner = Scanner(string: hex)

        var value: UInt64 = 0
        scanner.scanHexInt64(&value)

        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (r, g, b, a) = ((value >> 8) * 17, (value >> 4 & 0xF) * 17, (value & 0xF) * 17, 255)
        case 6: // RGB (24-bit)
            (r, g, b, a) = (value >> 16, value >> 8 & 0xFF, value & 0xFF, 255)
        case 8: // RGBA (32-bit)
            (r, g, b, a) = (value >> 24, value >> 16 & 0xFF, value >> 8 & 0xFF, value & 0xFF)
        default:
            (r, g, b, a) = (1, 1, 1, 1)
        }

        self.red = Double(r) / 255
        self.green = Double(g) / 255
        self.blue = Double(b) / 255
        self.opacity = Double(a) / 255
    }
}
