
import SpriteKit
import CoreGraphics
import UIKit
import Foundation

public enum Paintings: String {
    case monaLisa = "mona"
    case meisjeMetDeParel = "garota"
}

public class ArtScene3: SKScene {
    var x: CGFloat = 0
    var y: CGFloat = 0
    var w: CGFloat = 50
    var h: CGFloat = 50
    var step: CGFloat = 100
    
    public var sumColorRed: UIColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    public var sumColorGreen: UIColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    public var sumColorBlue: UIColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    public var maxlineWidth: Int = 5
    public var maxZposition: Int = 5
    public var painting: Paintings = .monaLisa

    public func start() {
        var first = true
        
        let image = UIImage(named: self.painting.rawValue)
        guard let cgimage = image?.cgImage else {return}
        let width = cgimage.width
        let height = cgimage.height
        
        let bytesPerPixel = 4;
        let bytesPerRow = bytesPerPixel * width;
        let bitsPerComponent = 8;
        let pixelsCount = width * height
        let bitmapData: UnsafeMutablePointer<UInt32> = .allocate(capacity: pixelsCount)
        defer {
            bitmapData.deallocate()
        }
        bitmapData.initialize(repeating: 0, count: pixelsCount)
        var pixelAtPosition: ((Int, Int) -> UInt32) = { x, y in
            return bitmapData[y * width + x]
        }
        
        guard let context = CGContext(data: bitmapData, width: width, height: height,
                                      bitsPerComponent: bitsPerComponent, bytesPerRow: bytesPerRow,
                                      space: CGColorSpaceCreateDeviceRGB(), bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue) else {
            fatalError()
        }
        var rect = CGRect(x: 0, y: 0, width: width, height: height)
        context.draw(cgimage, in: rect)
        var traget = pixelAtPosition(100, 10)
        var redP = (traget & 0x000000FF)
        var greenP = (traget & 0x0000FF00) >> 8
        var blueP = (traget & 0x00FF0000) >> 16
        let alphaP = (traget & 0xFF000000) >> 24

        let numbers = [2, 3, 4, 5, 6]
        let index = Int.random(in: 0..<numbers.count)
        let randomNumber = numbers[index]
        var indexColuna = 0
        var indexLinha = 0
        
        for coluna in 0..<context.height {
            for linha in 0..<context.width {
                indexColuna = (context.height-1) - coluna
                indexLinha = (context.width-1) - linha
                if coluna % randomNumber == 0 && linha % randomNumber == 0 {
                    traget = pixelAtPosition(indexLinha, indexColuna)
                    redP = (traget & 0x000000FF)
                    greenP = (traget & 0x0000FF00) >> 8
                    blueP = (traget & 0x00FF0000) >> 16
                    
                    let redAlterado = sumColorRed.cgColor.components![0] + (CGFloat(redP)/255)
                    let greeAlterado = sumColorGreen.cgColor.components![1] + (CGFloat(greenP)/255)
                    let blueAlterado = sumColorBlue.cgColor.components![2] + (CGFloat(blueP)/255)
                    
                    let color = UIColor(red: redAlterado, green: greeAlterado, blue: blueAlterado, alpha: 1)
                    
                    if first {
                        self.backgroundColor = color
                        first = false
                    }

                    self.drawSymbol(point: CGPoint(x: linha, y: coluna), color: color)
                    
                }
            }
        }
        
    }

    public override func didMove(to view: SKView) {
        self.removeAllChildren()
        self.backgroundColor = #colorLiteral(red: 0.4550631046, green: 0.6557807326, blue: 0.9979295135, alpha: 1.0)
        
        self.start()
    }

    public func drawSymbol(character: String = "/", point: CGPoint, color: UIColor = #colorLiteral(red: 0.8152796030044556, green: 0.8915408849716187, blue: 1.0079549551010132, alpha: 1.0)) {
        var p1: CGPoint = point
        var p2: CGPoint = point
        p2.x += w
        p2.y += h

        self.drawShape(points: [p1,p2], color: color)
    }
    
    public func drawShape(points: [CGPoint], lineWidth: CGFloat = 1, color: UIColor = #colorLiteral(red: 0.7966935038566589, green: 0.8946260809898376, blue: 1.0109162330627441, alpha: 1.0)) {
        var shape = SKShapeNode()
        var path = CGMutablePath()
        
        if points.count > 0 {
            path.move(to: points[0])
            for p in points{
                path.addLine(to: p)
            }
        }
        shape.path = path
        shape.strokeColor = color
        shape.lineWidth = CGFloat(Int.random(in: 1...maxlineWidth))
        shape.zPosition = CGFloat(Int.random(in: 1...maxZposition))
        self.addChild(shape)
        
    }
    
}
