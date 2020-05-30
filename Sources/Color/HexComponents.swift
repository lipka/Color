import Foundation

struct HexComponents {
    let red: Double
    let green: Double
    let blue: Double

    init(hex string: String) {
        var hex: String
        if string.hasPrefix("#") {
            hex = String(string.dropFirst())
        } else {
            hex = string
        }

        if hex.count == 3 {
            for (index, char) in hex.enumerated() {
                hex.insert(char, at: hex.index(hex.startIndex, offsetBy: index * 2))
            }
        }

        self.red = Double((Int(hex, radix: 16)! >> 16) & 0xFF) / 255
        self.green = Double((Int(hex, radix: 16)! >> 8) & 0xFF) / 255
        self.blue = Double((Int(hex, radix: 16)! >> 0) & 0xFF) / 255
    }
}
