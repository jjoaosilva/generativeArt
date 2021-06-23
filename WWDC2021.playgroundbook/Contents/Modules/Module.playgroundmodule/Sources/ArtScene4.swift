import SpriteKit

open class ArtScene4: SKScene {
    
    var x: CGFloat = 0
    var y: CGFloat = 0
    var w: CGFloat = 50
    var h: CGFloat = 50
    
    open override func didMove(to view: SKView) {

        self.backgroundColor = #colorLiteral(red: 0.658136785, green: 0.7746616006, blue: 0.9976486564, alpha: 1.0)
        for j in 0..<30 {
            for i in 0..<30 {
                self.drawSquare(point: CGPoint(x: self.x, y: self.y))
                self.x += w
            }
            self.x = 0
            self.y += h
        }
    }
    
    public func drawSquare(point: CGPoint) {
        var colors: [UIColor] = [#colorLiteral(red: 0.8026679754257202, green: 0.8796008229255676, blue: 1.0004709959030151, alpha: 1.0), #colorLiteral(red: 0.2595813274383545, green: 0.41305238008499146, blue: 0.5890190601348877, alpha: 1.0), #colorLiteral(red: 0.4549756646156311, green: 0.5007883310317993, blue: 0.5744356513023376, alpha: 1.0), #colorLiteral(red: 0.4399682283401489, green: 0.6036099195480347, blue: 0.8382031321525574, alpha: 1.0)]
        
        let square = SKShapeNode(rect: CGRect(origin: point, size: CGSize(width: 50, height: 50)))
        
        square.lineWidth = 0
        
        let indexFill = Int.random(in: 0..<colors.count)
        square.fillColor = colors[indexFill]
        self.addChild(square)
        
        let changeColor = SKAction.customAction(withDuration: 0, actionBlock: {
            node, _ in
            let index = Int.random(in: 0..<colors.count)
            (node as! SKShapeNode).fillColor = colors[index]
        })
        
        let delay = SKAction.wait(forDuration: 2)
        
        let sequence = SKAction.sequence([changeColor, delay])
        let infinite = SKAction.repeatForever(sequence)
        square.run(infinite)
    }
}
