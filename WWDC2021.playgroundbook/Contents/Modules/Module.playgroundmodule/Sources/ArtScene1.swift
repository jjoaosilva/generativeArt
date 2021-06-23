
import SpriteKit

class ArtScene1: SKScene {
    
    var x: CGFloat = 0
    var y: CGFloat = 0
    var w: CGFloat = 50
    var h: CGFloat = 50
    public var backgroundColorScreen: UIColor = #colorLiteral(red: 0.658136785, green: 0.7746616006, blue: 0.9976486564, alpha: 1.0)
    var lineWidthParameter: CGFloat = 1
    var colorsParameter: [UIColor] = [#colorLiteral(red: 0.8026679754257202, green: 0.8796008229255676, blue: 1.0004709959030151, alpha: 1.0), #colorLiteral(red: 0.29405272006988525, green: 0.4090169072151184, blue: 0.574702262878418, alpha: 1.0), #colorLiteral(red: 0.4549756646156311, green: 0.5007883310317993, blue: 0.5744356513023376, alpha: 1.0), #colorLiteral(red: 0.4399682283401489, green: 0.6036099195480347, blue: 0.8382031321525574, alpha: 1.0)]
    
    override func didMove(to view: SKView) {
        self.start()
    }

    public func start() {
        self.removeAllChildren()
    
        self.backgroundColor = backgroundColorScreen
        
        for j in 0..<30 {
            for i in 0..<30 {
                  let prob = Int.random(in: 0..<10)
                  self.drawSymbol(character:  prob<5 ? "/": "\\" , point: CGPoint(x: self.x, y: self.y))
                  self.x += w
            }
            self.x = 0
            self.y += h
        }

        x = 0
        y = 0
    }
    
    public func drawSymbol(character: String = "/", point: CGPoint) {
        var p1: CGPoint = point
        var p2: CGPoint = point
        
        switch character {
        case "/":
            p2.x += w
            p2.y += h
            default:
            p1.y += h
            p2.x += w
        }
        self.drawShape(points: [p1,p2])
    }
        
    public func drawShape(points: [CGPoint]) {
        var shape = SKShapeNode()
        var path = CGMutablePath()
        
        if points.count > 0 {
            path.move(to: points[0])
            for p in points{
                path.addLine(to: p)
            }
        }
        shape.path = path
        shape.strokeColor = colorsParameter[0]
        shape.lineWidth = lineWidthParameter
        self.addChild(shape)
        
        let changeColor = SKAction.customAction(withDuration: 0, actionBlock: {
            node, _ in
            let index = Int.random(in: 0..<self.colorsParameter.count)
            (node as! SKShapeNode).strokeColor = self.colorsParameter[index]
        })
        
        let delay = SKAction.wait(forDuration: 2)
        
        let sequence = SKAction.sequence([changeColor, delay])
        let infinite = SKAction.repeatForever(sequence)
        shape.run(infinite)
    }
}
