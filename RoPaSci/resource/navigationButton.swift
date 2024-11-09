import SwiftUI


struct navigationButton: View {
    var text: String
    
    var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 358, height: 50)
                    .foregroundColor(.navigationButton)
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .medium))
                    .multilineTextAlignment(.center)
        }
    }
}
#Preview {
    navigationButton(text: "")
}
