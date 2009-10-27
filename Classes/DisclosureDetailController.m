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
