//
//  LoseScene.m
//  ImmuniFense
//
//  Created by Mayara Coelho on 2/9/15.
//  Copyright (c) 2015 Group 9. All rights reserved.
//

#import "LoseScene.h"
#import "Title.h"
@implementation LoseScene

-(id)initWithSize:(CGSize)size {
    
    if (self = [super initWithSize:size]) {
        
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"youwinalert"];
        background.position = CGPointMake(0, 0);
        background.anchorPoint = CGPointMake(0, 0);
        background.yScale = 0.35;
        background.xScale = 0.35;
        [self addChild:background];
    }
    return self;
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    Title *titleScene = [Title sceneWithSize:self.frame.size];
    SKTransition *transition = [SKTransition crossFadeWithDuration:1.0];
    [self.view presentScene:titleScene transition:transition];
}


@end

