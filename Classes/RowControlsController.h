//
//  RowControlsController.h
//  Nav
//
//  Created by Bob Dapaah on 30/10/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondLevelViewController.h"

@interface RowControlsController : SecondLevelViewController {
	
	NSArray *list;

}

@property (nonatomic, retain) NSArray *list;

- (IBAction)buttonTapped:(id)sender;

@end
