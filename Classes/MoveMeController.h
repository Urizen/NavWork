//
//  MoveMeController.h
//  Nav
//
//  Created by Boris Dapaah on 01/11/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//
//used for demonstrating the ability to move table cells around.
#import <Foundation/Foundation.h>
#import "SecondLevelViewController.h"

@interface MoveMeController : SecondLevelViewController {
	
	NSMutableArray *list;

}

@property (nonatomic, retain) NSMutableArray *list;

- (IBAction) toggleMove;

@end
