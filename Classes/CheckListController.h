//
//  CheckListController.h
//  Nav
//
//  Created by Boris Dapaah on 29/10/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondLevelViewController.h"


@interface CheckListController : SecondLevelViewController {

	NSArray *list;
	NSIndexPath *lastIndexPath;
}

@property (nonatomic, retain) NSArray *list;
@property (nonatomic, retain) NSIndexPath *lastIndexPath;

@end
