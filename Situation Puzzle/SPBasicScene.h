//
//  SPBasicScene.h
//  Situation Puzzle
//
//  Created by Huo Ju on 11-12-16.
//  Copyright (c) 2011年 TongJi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SPBasicScene : CCScene
{
    CCLayer * bgLayer_;
    CCSprite * backgroud_;
}
@property (nonatomic,retain) CCSprite * backgroud;
@property (nonatomic,retain) CCLayer * bgLayer;
- (void) reload;
@end
