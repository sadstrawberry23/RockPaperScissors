import SwiftUI

struct pickView: View {
    
    @State private var titleText = "Take your pick"
    @State var gesturesPicked: String = ""
    @State var yourPickScreenBool: Bool = false
    
    var data = Data()
    
    var body: some View {
        NavigationView{
            VStack{
                
                NavigationLink(isActive: $yourPickScreenBool) {
                    yourPickScreen(data: data)
                } label: {
                    EmptyView()
                }
                
                Text(titleText)
                    .font(.system(size: 54, weight: .bold))
                    .navigationTitle("Round #\(data.roundNumber)")
                
                Spacer().frame(height: 24)
                
                Text("score \(data.playerOneScore):\(data.playerTwoScore)")
                    .font(.system(size: 17))
                    .foregroundStyle(.navigationButton)
                
                Spacer()
                
                VStack(spacing:20) {
                    Button {
                        gesturesPicked = "🗿"
                        data.playerOneChoice = "🗿"
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 48)
                                .foregroundStyle(.pick)
                                .frame(width: 342, height: 128)
                            Text("🗿")
                                .font(.system(size: 80))
                        }
                    }
                    Button {
                        gesturesPicked = "🧻"
                        data.playerOneChoice = "🧻"
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 48)
                                .foregroundStyle(.pick)
                                .frame(width: 342, height: 128)
                            Text("🧻")
                                .font(.system(size: 80))
                        }
                    }
                    Button {
                        gesturesPicked = "✂️"
                        data.playerOneChoice = "✂️"
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 48)
                                .foregroundStyle(.pick)
                                .frame(width: 342, height: 128)
                            Text("✂️")
                                .font(.system(size: 80))
                        }
                    }
                }
                Spacer()
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Round #\(data.roundNumber)")
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    pickView(data: Data())
}
