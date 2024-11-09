import SwiftUI

struct oponentsPicked: View {
    var body: some View {
        VStack{
            Text("Your oponent's pick")
                .font(.system(size: 54, weight: .bold))
                .multilineTextAlignment(.center)
            
            Spacer().frame(height: 62)
            
            ZStack{
            RoundedRectangle(cornerRadius: 48)
                    .foregroundColor(.pick)
                    .frame(width: 342, height: 128)
            }
            Spacer()
        }
    }
}

#Preview {
    oponentsPicked()
}
