#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacle = 0.0f;
    

}

-(void)update:(CCTime)delta
{
    if (timeSinceObstacle> 2.0f) {
        [self addObstacle];
        timeSinceObstacle = 0.0;
    }
}


- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    [character flap];
    
}

@end
