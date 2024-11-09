import SwiftUI

struct yourPickScreen: View {
        @State private var titleText = "Your pick"
        @State var gesturesPicked: String = ""
        @State var changedMyMind: Bool = false
        @State var nextScreenView: Bool = false
        @State var nextScreenView2: Bool = false
        
        var data = Data()
        
        var body: some View {
            
            VStack{
                
                NavigationLink(isActive: $changedMyMind) {
                    pickView(data: data)
                } label: {
                    EmptyView()
                }
                
                Spacer()
            
                Text(titleText)
                    .font(.system(size: 54, weight: .bold))
                    .navigationTitle("Round #\(data.roundNumber)")
                
                Spacer().frame(height: 24)
                
                Text("score 0:0")
                    .font(.system(size: 17))
                    .foregroundStyle(.navigationButton)
                
                Spacer()
            
                VStack(spacing:20) {
                    Button {
                        gesturesPicked = "🗿"
                        if !data.isMultiPlayer {
                            nextScreenView = true
                        } else {
                            nextScreenView2 = true
                        }
                    } label: {
                        pickEmoji(gestureChoice: data.playerOneChoice)
                        }
                    }
                Spacer()
                }
            Button {
                changedMyMind = true
            } label: {
                navigationButton(text: "I change my mind")
            }
            }
        }


#Preview {
    yourPickScreen(data: Data())
}
