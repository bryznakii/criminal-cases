//
//  SPBasicScene.m
//  Situation Puzzle
//
//  Created by Huo Ju on 11-12-16.
//  Copyright (c) 2011年 TongJi. All rights reserved.
//

#import "SPBasicScene.h"
@implementation SPBasicScene
@synthesize backgroud = backgroud_;
@synthesize bgLayer = bgLayer_;

- (void) dealloc
{
    self.backgroud = nil;
    self.bgLayer = nil;
    [super dealloc];
}

- (id)init
{
    if(self = [super init])
    {
        self.bgLayer = [CCLayer node];       
        [self addChild:self.bgLayer];

    }
    return self;
}

- (void) reload
{
    CGSize size = [[CCDirector sharedDirector] winSize];
    [self setContentSize:size];
    [self.bgLayer setContentSize:size];
    //CCLabelTTF* outputLabel = [CCLabelTTF labelWithString:@"Hello World" fontName:@"Marker Felt" fontSize:64];
    //[self addChild:outputLabel];
    //outputLabel.position = ccp(size.width/2,size.height/2 );

}
@end
