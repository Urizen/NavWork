//
//  DisclosureButtonController.h
//  Nav
//
//  Created by Boris Dapaah on 25/10/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondLevelViewController.h"
@class DisclosureDetailController;

@interface DisclosureButtonController : SecondLevelViewController {

	NSArray *list;
	DisclosureDetailController *childController;
	
}

@property (nonatomic, retain) NSArray *list;

@end
