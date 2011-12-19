//
//  RootViewController.h
//  Situation Puzzle
//
//  Created by Jeff on 11-12-7.
//  Copyright __MyCompanyName__ 2011年. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SPMainSceneController.h"
#import "SPPrefaceSceneController.h"
#import "SPJeffTestSceneController.h"
#import "SPCocoTestSceneController.h"
#import "SPGelfordTestSceneController.h"
@interface RootViewController : UIViewController {
    SPMainSceneController * mainSceneController_;
    SPPrefaceSceneController *prefaceSceneController_;
    SPJeffTestSceneController *jeffTestSceneController_;
    SPCocoTestSceneController *cocoTestSceneController_;
    SPGelfordTestSceneController *gelfordTestSceneController_;
}

@property (nonatomic,retain) SPMainSceneController * mainSceneController;
@property (nonatomic,retain) SPPrefaceSceneController *prefaceSceneController;
@property (nonatomic,retain) SPJeffTestSceneController *jeffTestSceneController;
@property (nonatomic,retain) SPCocoTestSceneController *cocoTestSceneController;
@property (nonatomic,retain) SPGelfordTestSceneController *gelfordTestSceneController;
@end
