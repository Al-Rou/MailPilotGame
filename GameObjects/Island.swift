import GameplayKit
import SpriteKit

class Island : GameObject
{
    
    // constructor / initializer
    init()
    {
        super.init(imageString: "island", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    override func CheckBounds()
    {
//        if(position.y <= -730)
//        {
//            Reset()
//        }
        //For landscape orientation, x position has to be checked!
        if(position.x <= -730)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
//        position.y = 730
        //For landscape orientation, x position has to be reset!
        position.x = 730
        // get a pseudo random number -313 to 313
        let randomX:Int = (randomSource?.nextInt(upperBound: 616))! - 313
//        position.x = CGFloat(randomX)
        //For landscape orientation, y position has to be changed randomly!
        position.y = CGFloat(randomX)
        isCollding = false
    }
    
    // initialization
    override func Start()
    {
        Reset()
        zPosition = 1
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
//        position.y -= verticalSpeed!
        //I didn't rename the variable for landscape orientation.
        position.x -= verticalSpeed!
    }
}
