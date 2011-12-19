//
//  SPMainScene.m
//  Situation Puzzle
//
//  Created by Huo Ju on 11-12-19.
//  Copyright (c) 2011年 TongJi. All rights reserved.
//

#import "SPMainScene.h"

@interface SPMainScene()

- (void) onClickGameButton:(id) sender;
- (void) onClickSettingButton:(id) sender;
- (void) onClickJeffTestButton:(id) sender;
- (void) onClickCocoTestButton:(id) sender;
- (void) onClickGelfordTestButton:(id) sender;

@end

@implementation SPMainScene
@synthesize menu = menu_;
@synthesize gameButtonItem = gameButtonItem_;
@synthesize settingButtonItem = settingButtonItem_;
@synthesize jeffTestButtonItem = jeffTestButtonItem_;
@synthesize cocoTestButtonItem = cocoTestButtonItem_;
@synthesize gelfordTestButtonItem = gelfordTestButtonItem_;

- (void)dealloc
{
    self.gameButtonItem = nil;
    self.settingButtonItem = nil;
    self.jeffTestButtonItem = nil;
    self.cocoTestButtonItem = nil;
    self.gelfordTestButtonItem = nil;
    self.menu = nil;
    [super dealloc];
}

- (id) init
{
    if (self = [super init])
    {
        self.gameButtonItem = [CCMenuItemLabel itemWithTarget:self selector:@selector(onClickGameButton:)];
        self.settingButtonItem = [CCMenuItemLabel itemWithTarget:self selector:@selector(onClickSettingButton:)];
        self.jeffTestButtonItem = [CCMenuItemLabel itemWithTarget:self selector:@selector(onClickJeffTestButton:)];
        self.cocoTestButtonItem = [CCMenuItemLabel itemWithTarget:self selector:@selector(onClickCocoTestButton:)];
        self.gelfordTestButtonItem = [CCMenuItemLabel itemWithTarget:self selector:@selector(onClickGelfordTestButton:)];
        
        self.menu = [CCMenu menuWithItems:self.gameButtonItem,self.settingButtonItem,self.jeffTestButtonItem,self.cocoTestButtonItem,self.gelfordTestButtonItem, nil];
        [self.bgLayer addChild:self.menu];
        
           }
    return self;
}

- (void) reload
{
    [super reload];

    CGSize size = [[CCDirector sharedDirector] winSize];
    
    CCLabelTTF* gameButtonLabel = [CCLabelTTF labelWithString:@"Start Game" fontName:@"Marker Felt" fontSize:25];
    [self.gameButtonItem setLabel:gameButtonLabel];
    CCLabelTTF* settingButtonLabel = [CCLabelTTF labelWithString:@"Game Settings" fontName:@"Marker Felt" fontSize:25];
    [self.settingButtonItem setLabel:settingButtonLabel];
    CCLabelTTF* jeffTestButtonLabel = [CCLabelTTF labelWithString:@"Jeff Test Entrance" fontName:@"Marker Felt" fontSize:25];
    [self.jeffTestButtonItem setLabel:jeffTestButtonLabel];
    CCLabelTTF* cocoTestButtonLabel = [CCLabelTTF labelWithString:@"Coco Test Entrance" fontName:@"Marker Felt" fontSize:25];
    [self.cocoTestButtonItem setLabel:cocoTestButtonLabel];
    CCLabelTTF* gelfordTestButtonLabel = [CCLabelTTF labelWithString:@"Gelford Test Entrance" fontName:@"Marker Felt" fontSize:25];
    [self.gelfordTestButtonItem setLabel:gelfordTestButtonLabel];
    
    [self.menu setContentSize:size];
    [self.gameButtonItem setContentSize:size];
    [self.settingButtonItem setContentSize:size];
    [self.jeffTestButtonItem setContentSize:size];
    [self.cocoTestButtonItem setContentSize:size];
    [self.gelfordTestButtonItem setContentSize:size];
    
    self.menu.position = ccp(size.width/2, size.height/2);
    self.gameButtonItem.position = ccp(size.width/2, size.height/2);
    self.settingButtonItem.position = ccp(size.width/2, size.height/2 - 50); 
    self.jeffTestButtonItem.position = ccp(size.width/2, size.height/2 - 100); 
    self.cocoTestButtonItem.position = ccp(size.width/2, size.height/2 - 150); 
    self.gelfordTestButtonItem.position = ccp(size.width/2, size.height/2 - 200); 
}

- (void) onClickGameButton:(id) sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:PREFACE_SCENE object:self];
}
- (void) onClickSettingButton:(id) sender
{}
- (void) onClickJeffTestButton:(id) sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:JEFF_TEST_SCENE object:self];
}
- (void) onClickCocoTestButton:(id) sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:COCO_TEST_SCENE object:self];
}
- (void) onClickGelfordTestButton:(id) sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:GELFORD_TEST_SCENE object:self];
}

@end
