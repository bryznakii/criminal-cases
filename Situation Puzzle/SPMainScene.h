//
//  SPMainScene.h
//  Situation Puzzle
//
//  Created by Huo Ju on 11-12-19.
//  Copyright (c) 2011年 TongJi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SPBasicScene.h"
@interface SPMainScene : SPBasicScene
{
    CCMenu * menu_;
    CCMenuItemLabel * gameButtonItem_;
    CCMenuItemLabel * settingButtonItem_;
    CCMenuItemLabel * jeffTestButtonItem_;
    CCMenuItemLabel * cocoTestButtonItem_;
    CCMenuItemLabel * gelfordTestButtonItem_;
}

@property (nonatomic,retain) CCMenu * menu;
@property (nonatomic,retain) CCMenuItemLabel * gameButtonItem;
@property (nonatomic,retain) CCMenuItemLabel * settingButtonItem;
@property (nonatomic,retain) CCMenuItemLabel * jeffTestButtonItem;
@property (nonatomic,retain) CCMenuItemLabel * cocoTestButtonItem;
@property (nonatomic,retain) CCMenuItemLabel * gelfordTestButtonItem;

@end
