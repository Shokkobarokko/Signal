import SwiftUI

// MARK: - Модификатор для карточек SIGNAL
struct SignalCardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.padding(16).background(Color.signalSurface).cornerRadius(2).overlay(RoundedRectangle(cornerRadius: 2).stroke(Color.signalBorder, lineWidth: 0.5) )
    }
}

extension View {
    func signalCard() -> some View {
        self.modifier(SignalCardModifier())
    }
}
