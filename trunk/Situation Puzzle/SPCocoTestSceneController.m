//
//  SPCocoTestSceneController.m
//  Situation Puzzle
//
//  Created by Huo Ju on 11-12-19.
//  Copyright (c) 2011年 TongJi. All rights reserved.
//

#import "SPCocoTestSceneController.h"
#import "SPCocoTestScene.h"
@implementation SPCocoTestSceneController
- (id) init
{
    if (self= [super init]) {
        self.scene = [SPCocoTestScene node];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(replaceScene:) name:COCO_TEST_SCENE object:nil];    
    }
    return self;
}

- (void)replaceScene:(id)sender
{
    [(SPCocoTestScene *)self.scene reload];
    [[CCDirector sharedDirector] replaceScene:self.scene];
}
@end
