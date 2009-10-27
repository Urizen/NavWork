//
//  FirstLevelViewController.m
//  Nav
//
//  Created by Boris Dapaah on 06/10/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "FirstLevelViewController.h"
#import "SecondLevelViewController.h"

@implementation FirstLevelViewController

@synthesize controllers;

- (void) viewDidLoad {

	self.title = @"First Level";
	
	NSMutableArray *array = [[NSMutableArray alloc] init];
	self.controllers = array;
	[array release];
	[super viewDidLoad];
	
}

- (void) dealloc {

	[controllers release];
	[super dealloc];
	
}


#pragma mark -
#pragma mark Table View Data Source Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
	return [self.controllers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

	static NSString *FirstLevelCell = @"FirstLevelCell";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:FirstLevelCell];
	
	if (cell == nil) {
		
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:FirstLevelCell] autorelease];
	}
	
	//configure the cell
	NSUInteger row = [indexPath row];
	SecondLevelViewController *controller = [controllers objectAtIndex:row];
	cell.textLabel.text = controller.title;
	cell.imageView.image = controller.rowImage;
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	
	return cell;
}

#pragma mark -
#pragma mark Table View Delegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

	NSUInteger row = [indexPath row];
	
	SecondLevelViewController *nextController = [self.controllers objectAtIndex:row];
	[self.navigationController pushViewController:nextController animated:YES];
	
}

@end