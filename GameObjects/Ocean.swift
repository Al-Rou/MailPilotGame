import GameplayKit
import SpriteKit

class Ocean : GameObject
{
    
    // constructor / initializer
    init()
    {
        //For landscape orientation, ocean is rotated 90 degrees and saved as ocean-1!
        super.init(imageString: "ocean-1", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    override func CheckBounds()
    {
//        if(position.y <= -773)
//        {
//            Reset()
//        }
        //For landscape orientation, x position has to be checked!
        if(position.x <= -773)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        //position.y = 773
        //For landscape orientation, x position has to be reset!
        position.x = 773
    }
    
    // initialization
    override func Start()
    {
        zPosition = 0
        //I didn't rename the variable for landscape orientation.
        verticalSpeed = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    func Move()
    {
        //position.y -= verticalSpeed!
        //For landscape orientation, x position has to be changed!
        position.x -= verticalSpeed!
    }
}
