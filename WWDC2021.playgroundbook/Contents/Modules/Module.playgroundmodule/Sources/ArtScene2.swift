
import SpriteKit

class ArtScene2: SKScene {
    
    var n: CGFloat = 1
    var d: CGFloat = 2
    var angle: CGFloat = 0
    var step: CGFloat = 0.05

    public var backgroundColorScreen: UIColor = #colorLiteral(red: 0.658136785, green: 0.7746616006, blue: 0.9976486564, alpha: 1.0)
    var lineWidthParameter: CGFloat = 1
    var colorsParameter: [UIColor] = [#colorLiteral(red: 0.8026679754257202, green: 0.8796008229255676, blue: 1.0004709959030151, alpha: 1.0), #colorLiteral(red: 0.29405272006988525, green: 0.4090169072151184, blue: 0.574702262878418, alpha: 1.0), #colorLiteral(red: 0.4549756646156311, green: 0.5007883310317993, blue: 0.5744356513023376, alpha: 1.0), #colorLiteral(red: 0.4399682283401489, green: 0.6036099195480347, blue: 0.8382031321525574, alpha: 1.0)]
    var numRosesParameter: Int = 20

    override func didMove(to view: SKView) {
        self.backgroundColor = backgroundColorScreen
    }

    public func start() {
        self.removeAllChildren()

        for roses in 0..<self.numRosesParameter {
            drawSymbol()
        }
    }
    
    override func didChangeSize(_ oldSize: CGSize) {
        self.start()
    }
        
    public func drawSymbol() {
        var points: [CGPoint] = []
        let radius = Int.random(in: 50...200)

        let xPosition = Int.random(in: 0...Int(self.frame.width))
        let yPosition = Int.random(in: 0...Int(self.frame.height))
        let center = CGPoint(x:xPosition, y:yPosition)

        self.n = CGFloat(Int.random(in: 1...8))
        self.d = CGFloat(Int.random(in: 1...8))
    
        let k = n/d
        for i in 0...1000 {
            let r = CGFloat(radius) * cos(k * self.angle)
            let x = center.x + r * cos(angle)
            let y = center.y + r * sin(angle)
            self.angle += self.step
            points.append(CGPoint(x:x, y:y))
        }
        self.drawShape(points: points)
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
        
        let index = Int.random(in: 0..<self.colorsParameter.count)
        
        shape.path = path
        shape.strokeColor = self.colorsParameter[index]
        shape.lineWidth = lineWidthParameter
        self.addChild(shape)
    }
}
