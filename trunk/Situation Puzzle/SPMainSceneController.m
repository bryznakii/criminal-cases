//
//  SPMainSceneController.m
//  Situation Puzzle
//
//  Created by Huo Ju on 11-12-16.
//  Copyright (c) 2011年 TongJi. All rights reserved.
//

#import "SPMainSceneController.h"
#import "SPMainScene.h"

@implementation SPMainSceneController
- (id) init
{
    if (self= [super init]) {
        self.scene = [SPMainScene node];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(replaceScene:) name:MAIN_GAME_SCENE object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(runFirstScene:) name:RUN_FIRST_MAIN_GAME_SCENE object:nil];

    }
    return self;
}

- (void) replaceScene:(id)sender
{
    [(SPMainScene *)self.scene reload];
    [[CCDirector sharedDirector] replaceScene:self.scene];
}

- (void) runFirstScene:(id)sender
{
    [(SPMainScene *)self.scene reload];
    [[CCDirector sharedDirector] runWithScene:self.scene];
}
@end
