import SwiftUI

// MARK: - Фирменные цвета SIGNAL
extension Color {
     static let signalBackground = Color(hex: "#0A0A0A")
     static let signalSurface = Color(hex: "#111111")
     static let signalBorder = Color(hex: "#1E1E1E")
     static let signalAccent = Color(hex: "#1A3A5C")
     static let signalAccentBright = Color(hex: "#2D6FA8")
     static let signalTextPrimary = Color(hex: "#F0F0F0")
     static let signalTextSecondary = Color(hex: "#6B6B6B")
     static let signalTextMono = Color(hex: "#4A7FA8")
    
    
}

private extension Color {
    init (hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r, g, b, a: UInt64
        switch hex.count {
        case 6:
            (a, r, g, b) = (255, (int >> 16) & 0xFF, (int >> 8) & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = ((int >> 24) & 0xFF, (int >> 16) & 0xFF, (int >> 8) & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
         self.init(
          .sRGB,
          red: Double(r) / 255,
          green: Double(g) / 255,
          blue: Double(b) / 255,
          opacity: Double(a) / 255
         )
    }
}
