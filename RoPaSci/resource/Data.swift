import Foundation

class Data {
    var isMultiPlayer: Bool
    
    var playerOneChoice: String
    var playerTwoChoice: String
    
    var playerOneScore: Int
    var playerTwoScore: Int
    
    var roundNumber: Int
    
    init() {
        self.isMultiPlayer = false
        self.playerOneChoice = ""
        self.playerTwoChoice = ""
        self.playerOneScore = 0
        self.playerTwoScore = 0
        self.roundNumber = 1
    }
}
