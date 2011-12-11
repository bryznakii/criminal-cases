//
//  SimpleNLProcessor.m
//  Situation Puzzle
//
//  Created by Jeff on 11-12-11.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "SimpleNLProcessor.h"

@implementation SimpleNLProcessor

+(NSString *) getUserInput:(NSString *)input
{
    if ([[input lowercaseString] compare: @"jeff is a good man"] == NSOrderedSame)
        return @"Yes! I think so too";
    
    return @"Sorry, I can't understand what you said.";
}

@end
