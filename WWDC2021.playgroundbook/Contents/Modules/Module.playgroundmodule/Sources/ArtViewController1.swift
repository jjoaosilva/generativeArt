
import UIKit
import SpriteKit
import PlaygroundSupport



public class ArtViewController1: UIViewController {
    
    public var backgroundColorParameter: UIColor = #colorLiteral(red: 0.658136785, green: 0.7746616006, blue: 0.9976486564, alpha: 1.0)
    public var lineWidthParameter: CGFloat = 1
    public var colorsParameter: [UIColor] = [#colorLiteral(red: 0.8026679754257202, green: 0.8796008229255676, blue: 1.0004709959030151, alpha: 1.0), #colorLiteral(red: 0.29405272006988525, green: 0.4090169072151184, blue: 0.574702262878418, alpha: 1.0), #colorLiteral(red: 0.4549756646156311, green: 0.5007883310317993, blue: 0.5744356513023376, alpha: 1.0), #colorLiteral(red: 0.4399682283401489, green: 0.6036099195480347, blue: 0.8382031321525574, alpha: 1.0)]
    
    private let lineWidthDefault: CGFloat = 1
    private let colorsDefault: [UIColor] = [#colorLiteral(red: 0.8026679754257202, green: 0.8796008229255676, blue: 1.0004709959030151, alpha: 1.0), #colorLiteral(red: 0.29405272006988525, green: 0.4090169072151184, blue: 0.574702262878418, alpha: 1.0), #colorLiteral(red: 0.4549756646156311, green: 0.5007883310317993, blue: 0.5744356513023376, alpha: 1.0), #colorLiteral(red: 0.4399682283401489, green: 0.6036099195480347, blue: 0.8382031321525574, alpha: 1.0)]

    lazy var scene: ArtScene1 = {
        let scene = ArtScene1()
        scene.backgroundColorScreen = self.backgroundColorParameter
        scene.lineWidthParameter = self.lineWidthParameter > 0 ? self.lineWidthParameter : self.lineWidthDefault
        scene.colorsParameter = self.colorsParameter.count > 0 ? self.colorsParameter : self.colorsDefault
        return scene
    }()
    
    public override func viewDidLoad() {
        let skview = SKView()
        scene.scaleMode = .resizeFill
        
        skview.presentScene(scene)
        self.view = skview
    }
}

public func CreateController() -> PlaygroundLiveViewable{
    let view = SKView()
    let scene = ArtScene1()
    scene.scaleMode = .resizeFill
    view.presentScene(scene)

    return view
}
