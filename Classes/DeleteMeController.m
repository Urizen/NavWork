//
//  DeleteMeController.m
//  Nav
//
//  Created by Boris Dapaah on 04/11/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "DeleteMeController.h"


@implementation DeleteMeController

@synthesize list;

- (IBAction) toggleEdit:(id)sender{
	
	[self.tableView setEditing:!self.tableView.editing animated:YES];
	
	if (self.tableView.editing)
		[self.navigationItem.rightBarButtonItem setTitle:@"Done"];
	else 
		[self.navigationItem.rightBarButtonItem setTitle:@"Delete"];
	
}

- (void) viewDidLoad {
	
	if (list == nil) {
		NSString *path = [[NSBundle mainBundle] pathForResource:@"computers" ofType:@"plist"];
		
		NSMutableArray *array = [[NSMutableArray alloc] initWithContentsOfFile:path];
		
		self.list = array;
		[array release];
	}
	
	UIBarButtonItem *editButton = [[UIBarButtonItem alloc] initWithTitle:@"Delete" style:UIBarButtonItemStyleBordered target:self action:@selector(toggleEdit:)];
	
	self.navigationItem.rightBarButtonItem = editButton;
	
	[editButton release];
	[super viewDidLoad];
	
	
}

#pragma mark -
#pragma mark Table Datasource Methods

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
	
	return [list count];
}

//----------
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	static NSString *DeleteMeCellIdentifier = @"DeleteMeCellIdentifier";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:DeleteMeCellIdentifier];
	
	if (cell == nil) {
		
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:DeleteMeCellIdentifier] autorelease];
		
	}
	
	NSUInteger row = [indexPath row];
	
	cell.textLabel.text = [list objectAtIndex:row];
	
	
	return cell;
	
}

#pragma mark -
#pragma mark Table Delegate Methods

- (void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
	
	NSUInteger row = [indexPath row];
	[self.list removeObjectAtIndex:row];
	[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
}

@end
