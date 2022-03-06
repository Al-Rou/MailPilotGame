import GameplayKit
import SpriteKit

class Plane : GameObject
{
    // initializer
    init()
    {
        //For landscape orientation, plane is rotated 90 degrees and saved as plane-1!
        super.init(imageString: "plane-1", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func CheckBounds()
    {
        // constrain on the left boundary
        //For landscape orientation, y position has to be checked!
        if(position.y <= -310)
        {
            position.y = -310
        }
//        if(position.x <= -310)
//        {
//            position.x = -310
//        }
        
        // constrain on the right boundary
        //For landscape orientation, y position has to be checked!
        if(position.y >= 310)
        {
            position.y = 310
        }
//        if(position.x >= 310)
//        {
//            position.x = 310
//        }
    }
    
    // initialization
    override func Start()
    {
        zPosition = 2
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
}
