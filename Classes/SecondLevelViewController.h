//
//  SecondLevelViewController.h
//  Nav
//
//An abstract class used to provide the UIImage object as a convenience for any inheriting
//second level controller.
//
//  Created by Boris Dapaah on 06/10/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SecondLevelViewController : UITableViewController{

	UIImage *rowImage;
	
}

@property (nonatomic, retain) UIImage *rowImage;

@end
