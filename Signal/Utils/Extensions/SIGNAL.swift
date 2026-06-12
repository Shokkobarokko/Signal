import SwiftUI

// Временный файл для проверки дизайн-системы
struct DesignPreview: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("SIGNAL")
                .font(.signalLargeTitle)
                .foregroundColor(.signalTextPrimary)

            Text("[ TECHNOLOGY ]")
                .font(.signalCaption)
                .foregroundColor(.signalTextMono)
                .tracking(2)               // межбуквенное расстояние

            Text("Sample article title")
                .font(.signalTitle)
                .foregroundColor(.signalTextPrimary)

            HStack {
                Text("Source")
                    .font(.signalCaption)
                    .foregroundColor(.signalTextSecondary)
                Spacer()
                Text("2026.06.11 / 14:32")
                    .font(.signalCaption2)
                    .foregroundColor(.signalTextMono)
            }
            .padding(.horizontal, 16)

            SignalDivider()

            VStack(alignment: .leading, spacing: 12) {
                Text("Card Example")
                    .font(.signalTitle2)
                    .foregroundColor(.signalTextPrimary)
                Text("Description text")
                    .font(.signalBody)
                    .foregroundColor(.signalTextSecondary)
            }
            .modifier(SignalCardModifier())  // применяем наш модификатор

            Button(action: {}) {
                Text("[ PRESS ME ]")
                    .font(.signalCaption)
                    .foregroundColor(.signalAccentBright)
                    .padding()
                    .overlay(
                        Rectangle()
                            .stroke(Color.signalAccent, lineWidth: 1)
                    )
            }
            .pressEffect()  // применяем эффект нажатия
        }
        .padding()
        .background(Color.signalBackground.edgesIgnoringSafeArea(.all))
    }
}

struct DesignPreview_Previews: PreviewProvider {
    static var previews: some View {
        DesignPreview()
            .preferredColorScheme(.dark) // чтобы Preview сразу в тёмной теме
    }
}
