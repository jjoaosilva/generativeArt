import UIKit
import SpriteKit
import PlaygroundSupport



public class ArtViewController3: UIViewController {
    
    public var sumColorRedParameter: UIColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    public var sumColorGreenParameter: UIColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    public var sumColorBlueParameter: UIColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    public var maxlineWidthParameter: Int = 5
    public var maxZpositionParameter: Int = 5
    public var paintingParameter: Paintings = .monaLisa

    private let maxlineWidthDefault: Int = 5
    private let maxZpositionDefault: Int = 5

    lazy var scene: ArtScene3 = {
        let scene = ArtScene3()
        scene.sumColorRed = self.sumColorRedParameter
        scene.sumColorGreen = self.sumColorGreenParameter
        scene.sumColorBlue = self.sumColorBlueParameter
        scene.maxlineWidth = maxlineWidthParameter > 0 ? maxlineWidthParameter: maxlineWidthDefault
        scene.maxZposition = maxZpositionParameter > 0 ? maxZpositionParameter: maxZpositionDefault
        scene.painting = paintingParameter
        return scene
    }()
    
    public override func viewDidLoad() {
        let skview = SKView()
        scene.scaleMode = .resizeFill
        
        skview.presentScene(self.scene)
        self.view = skview
    }
}

public func CreateLiveView3() -> PlaygroundLiveViewable{
    let view = SKView()
    let scene = ArtScene3()
    scene.scaleMode = .resizeFill
    view.presentScene(scene)

    return view
}
