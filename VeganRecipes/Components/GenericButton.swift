import SwiftUI

struct GenericButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .frame(width: 150)
            
                .padding(10)
                .background(Color(red: 113/255, green: 182/255, blue: 98/255))
                .foregroundColor(.white)
                .bold()
                .font(.headline)
                .cornerRadius(8)
        }
        .shadow(color: .black.opacity(0.15), radius: 20, x: 0, y: 10)
    }
}

#Preview {
    GenericButton(title: "Confirmar", action: {})
}
