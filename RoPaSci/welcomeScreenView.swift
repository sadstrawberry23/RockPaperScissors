import SwiftUI

struct welcomeScreenView: View {
    
    @State private var playerChoice: Bool = false
    
    var data = Data()
    
    var body: some View {
        NavigationView{
        ZStack {
            Image("BackgroundImage")
                .resizable()
                .ignoresSafeArea()
            VStack{
                NavigationLink(isActive: $playerChoice) {
                    pickView(data: data)
                } label: {
                    EmptyView()
                }
                Spacer().frame(height: 64)
                
                Text("Welcome to the game!")
                    .foregroundColor(.white)
                    .font(.system(size: 54, weight: .bold))
                    .multilineTextAlignment(.center)
                Spacer()
                Button {
                    playerChoice = true
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 358, height: 50)
                            .foregroundColor(.navigationButton)
                        Text("Single player")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .medium))
                            .multilineTextAlignment(.center)
                    }
                }
                Button {
                    playerChoice = true
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 358, height: 50)
                            .foregroundColor(.navigationButton)
                        Text("Multiplayer")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .medium))
                            .multilineTextAlignment(.center)
                    }
                }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    welcomeScreenView()
}

