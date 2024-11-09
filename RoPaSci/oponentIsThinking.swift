import SwiftUI

struct oponentIsThinking: View {
    var body: some View {
        Text("Your oponent is thinking")
            .font(.system(size: 54, weight: .bold))
            .multilineTextAlignment(.center)
        Spacer()
        
        ZStack{
            RoundedRectangle(cornerRadius: 48)
                .frame(width: 342, height: 128)
                .foregroundColor(.pick)
        }
        Spacer()
    }
}

#Preview {
    oponentIsThinking()
}
