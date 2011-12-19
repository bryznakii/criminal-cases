//
//  SPJeffTestSceneController.m
//  Situation Puzzle
//
//  Created by Huo Ju on 11-12-19.
//  Copyright (c) 2011年 TongJi. All rights reserved.
//

#import "SPJeffTestSceneController.h"
#import "SPJeffTestScene.h"

@implementation SPJeffTestSceneController
- (id) init
{
    if (self= [super init]) {
        self.scene = [SPJeffTestScene node];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(replaceScene:) name:JEFF_TEST_SCENE object:nil];    
    }
    return self;
}

- (void)replaceScene:(id)sender
{
    [(SPJeffTestScene *)self.scene reload];
    [[CCDirector sharedDirector] replaceScene:self.scene];
}
@end
