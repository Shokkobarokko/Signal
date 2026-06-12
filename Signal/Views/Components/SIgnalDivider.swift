import SwiftUI

// MARK: - Тонкий разделитель 0.5pt

struct SignalDivider: View {
    var body: some View {
        Color.signalBorder
            .frame(height: 0.5)
            .padding(.vertical, 8)
    }
}
