//
//  SPBasicSceneController.h
//  Situation Puzzle
//
//  Created by Huo Ju on 11-12-16.
//  Copyright (c) 2011年 TongJi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SPBasicSceneController : NSObject
{
    CCScene * scene_;
}
@property (nonatomic,retain) CCScene * scene;
- (void) replaceScene:(id)sender; 
- (void) runFirstScene:(id)sender;
@end
