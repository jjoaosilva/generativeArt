
import UIKit
import SpriteKit
import PlaygroundSupport

public class ArtViewController4: UIViewController {

    public override func viewDidLoad() {
        let skview = SKView()
        let scene = ArtScene4()
        scene.scaleMode = .resizeFill
        
        skview.presentScene(scene)
        self.view = skview
    }
}
