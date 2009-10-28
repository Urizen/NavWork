//
//  DisclosureDetailController.m
//  Nav
//
//  Created by Boris Dapaah on 25/10/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "DisclosureDetailController.h"


@implementation DisclosureDetailController

@synthesize label;
@synthesize message;

//this is used instead of viewDidLoad because the view corresponding to this controller
//will be reused and the viewDidLoad method is only called the first time that a controller's
//view is loaded.
//
//This method is called every time a view is about to be drawn.
- (void) viewWillAppear:(BOOL)animated {
	
	
	label.text = message;
	[super viewWillAppear:animated];	
	
}

- (void) viewDidUnload {
	
	self.label = nil;
	self.message = nil;
	[super viewDidUnload];
	
}

- (void)dealloc {
	
	[label release];
	[message release];
	[super dealloc];
}
@end
