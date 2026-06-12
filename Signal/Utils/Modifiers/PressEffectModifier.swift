import SwiftUI

// MARK: - Эффект нажатия с тактильным откликом

struct PressEffectModifier: ViewModifier {
    @State private var isPressed = false
    
    func body(content: Content) -> some View {
        content
            .scaleEffect(isPressed ? 0.97 : 1.0)
            .animation(.easeInOut(duration: 0.1), value: isPressed)
            .onLongPressGesture(
                minimumDuration: .infinity,
                maximumDistance: 50,
                pressing: { pressing in
                    isPressed = pressing
                },
                perform: {})
    }
}

extension View {
    func pressEffect() -> some View {
        self.modifier(PressEffectModifier())
    }
}
