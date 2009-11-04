//
//  DeleteMeController.h
//  Nav
//
//  Created by Boris Dapaah on 04/11/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SecondLevelViewController.h"		


@interface DeleteMeController : SecondLevelViewController {

	NSMutableArray *list;
	
}

@property (nonatomic, retain) NSMutableArray *list;

- (IBAction) toggleEdit:(id)sender;

@end
