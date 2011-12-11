//
//  HelloWorldLayer.m
//  Situation Puzzle
//
//  Created by Jeff on 11-12-7.
//  Copyright __MyCompanyName__ 2011年. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"
#import "SimpleNLProcessor.h"

// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		
		// create and initialize a Label
		outputLabel = [CCLabelTTF labelWithString:@"Hello World" fontName:@"Marker Felt" fontSize:64];

		// ask director the the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
	
		// position the label on the center of the screen
		outputLabel.position =  ccp( size.width /2 , size.height/2 );
		
		// add the label as a child to this Layer
		[self addChild: outputLabel];
        
        userInput_ = [[UITextField alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 300.0f, 30.0f)];
        userInput_.backgroundColor = [UIColor whiteColor];
        [[[CCDirector sharedDirector] openGLView] addSubview:userInput_];
        
        self.isTouchEnabled = YES;
	}
	return self;
}

-(void) ccTouchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touched");
    NSString *inputString = [userInput_ text];
    NSLog(@"%@", inputString);
    NSString *ret = [SimpleNLProcessor getUserInput: inputString];
    [outputLabel setString: ret];
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end
