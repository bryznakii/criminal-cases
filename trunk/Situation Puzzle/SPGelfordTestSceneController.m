//
//  SPGelfordTestController.m
//  Situation Puzzle
//
//  Created by Huo Ju on 11-12-19.
//  Copyright (c) 2011年 TongJi. All rights reserved.
//

#import "SPGelfordTestSceneController.h"
#import "SPGelfordTestScene.h"
@implementation SPGelfordTestSceneController
- (id) init
{
    if (self= [super init]) {
        self.scene = [SPGelfordTestScene node];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(replaceScene:) name:GELFORD_TEST_SCENE object:nil];    
    }
    return self;
}

- (void)replaceScene:(id)sender
{
    [(SPGelfordTestScene *)self.scene reload];
    [[CCDirector sharedDirector] replaceScene:self.scene];
}
@end
