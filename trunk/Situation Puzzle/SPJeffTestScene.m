//
//  SPJeffTestScene.m
//  Situation Puzzle
//
//  Created by Huo Ju on 11-12-19.
//  Copyright (c) 2011年 TongJi. All rights reserved.
//

#import "SPJeffTestScene.h"
#import "SimpleNLProcessor.h"

@implementation SPJeffTestScene

-(id) init
{
    if (self = [super init]) {
        userInput_ = [[UITextField alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 300.0f, 30.0f)];
        userInput_.backgroundColor = [UIColor whiteColor];
        
        self.bgLayer.isTouchEnabled = YES;
    }
    
    return self;
}

-(void) reload
{
    [[[CCDirector sharedDirector] openGLView] addSubview:userInput_];
}

-(void) ccTouchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touched");
    NSString *inputString = [userInput_ text];
    NSLog(@"%@", inputString);
    NSString *ret = [SimpleNLProcessor getUserInput: inputString];
    //[outputLabel setString: ret];
}

@end
