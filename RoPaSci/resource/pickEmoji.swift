import SwiftUI


struct pickEmoji: View {
    
    var gestureChoice: String = ""
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 48)
                .foregroundStyle(.pick)
                .frame(width: 342, height: 128)
            
            Text(gestureChoice)
                .font(.system(size: 80))
        }
    }
}
#Preview {
    pickEmoji()
}
