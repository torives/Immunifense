//
//  MainMenu.m
//  ImmuniFense
//
//  Created by Victor Yves Crispim on 02/5/15.
//  Copyright (c) 2015 Group 9. All rights reserved.
//

#import "MainMenu.h"
#import "Level.h"

@implementation MainMenu

-(id)initWithSize:(CGSize)size {
    
    if (self = [super initWithSize:size]) {
        
        /* Setup your scene here */
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"main_menu.jpg"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
//        background.position = CGPointMake(0, 0);
//        background.anchorPoint = CGPointMake(0, 0);
        background.yScale = 0.3;
        background.xScale = 0.3;
        
        [self addChild:background];
        
        //criação do botão de play game
        SKShapeNode *button = [SKShapeNode shapeNodeWithRect:CGRectMake(100, 120, 500, 180)];
        //button.position = CGPointMake(CGRectGetMidX(self.frame) + 110, CGRectGetMidY(self.frame) +70);
        button.name = @"startGameButton";
        button.hidden = YES;
        [background addChild:button];
    }
    
    return self;
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    // percebe qualquer toque na tela.
    UITouch *touch = [touches anyObject];
    // ca
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    
    // if next button touched, start transition to next scene
    if ([node.name isEqualToString:@"startGameButton"]) {
        NSLog(@"startGameButton pressed");
        Level *newLevel = [Level createLevel: LevelOne withSize: self.frame.size];
        SKTransition *transition = [SKTransition crossFadeWithDuration:1.0];
        [self.view presentScene:newLevel transition:transition];
    }
}

@end
