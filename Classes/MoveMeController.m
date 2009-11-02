//
//  MoveMeController.m
//  Nav
//
//  Created by Boris Dapaah on 01/11/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "MoveMeController.h"


@implementation MoveMeController

@synthesize list;

- (IBAction) toggleMove {
	
	[self.tableView setEditing:!self.tableView.editing animated:YES];
	
	if (self.tableView.editing)
		[self.navigationItem.rightBarButtonItem setTitle:@"Done"];
	else
		[self.navigationItem.rightBarButtonItem setTitle:@"Move"];
	
}

-(void) viewDidLoad {
	
	
	if (list == nil) {		
		
		NSArray *array = [[NSArray alloc] initWithObjects:@"Eeney", @"Meeny", @"Miney", @"Moe", @"Catch", @"A", @"Tiger", @"By",
						  @"The", @"Toe", nil];
		
		self.list = array;
		
		[array release];
	}
	
	UIBarButtonItem *moveButton = [[UIBarButtonItem alloc] initWithTitle:@"Move" style:UIBarButtonItemStyleBordered target:self action:@selector(toggleMove)];
	
	self.navigationItem.rightBarButtonItem = moveButton;
	
	[moveButton release];
	[super viewDidLoad];
}

-(void) viewDidUnload {
	
	
	self.list = nil;
}

- (void) dealloc {
	
	[list release];
	[super dealloc];
	
}

#pragma mark -
#pragma mark Table Datasource Methods

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
	
	return [list count];
}

//this is where I'm up to

@end
