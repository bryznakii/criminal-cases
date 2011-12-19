//
//  SPPrefaceSceneController.m
//  Situation Puzzle
//
//  Created by Huo Ju on 11-12-16.
//  Copyright (c) 2011年 TongJi. All rights reserved.
//

#import "SPPrefaceSceneController.h"
#import "SPPrefaceScene.h"
@implementation SPPrefaceSceneController
- (id) init
{
    if (self= [super init]) {
        self.scene = [SPPrefaceScene node];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(replaceScene:) name:PREFACE_SCENE object:nil];        
    }
    return self;
}

- (void)replaceScene:(id)sender
{
    [(SPPrefaceScene *)self.scene reload];
    [[CCDirector sharedDirector] replaceScene:self.scene];
}
@end
