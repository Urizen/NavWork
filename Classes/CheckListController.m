//
//  CheckListController.m
//  Nav
//
//  Created by Boris Dapaah on 29/10/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "CheckListController.h"


@implementation CheckListController

@synthesize list;
@synthesize lastIndexPath;


-(void) viewDidLoad {
	
	NSArray *array = [[NSArray alloc] initWithObjects:@"Who Hash", @"Bubba Gump Etouffee", @"Who Puddings", @"Scooby Snaks", @"Everlasting Gobstopper", @"Green Eggs and Ham", @"Soylent Green",
					  @"Hard Tack", @"Lembas Bread", @"Roast Bread", @"Blamanche", nil];
	
	self.list = array;
	[array release];
	[super viewDidLoad];

}

- (void) viewDidUnload {
	
	self.list = nil;
	self.lastIndexPath = nil;
	[super viewDidUnload];
}

- (void) dealloc {
	
	[list release];
	[lastIndexPath release];
	[super dealloc];

}

#pragma mark -
#pragma mark Table Data Source Methods

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
	return [list count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	static NSString *CheckMarkCellIdentifier = @"CheckMarkCellIdentifier";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CheckMarkCellIdentifier];
	
	if (cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewStylePlain reuseIdentifier:CheckMarkCellIdentifier];
		
	}
	
	NSUInteger row = [indexPath row];
	NSUInteger oldRow = [lastIndexPath row];
	 
	 cell.textLabel.text = [list objectAtIndex:row];
	 
	 cell.accessoryType = (row == oldRow && lastIndexPath != nil) ? UITableViewCellAccessoryCheckmark : UITableViewCellAccessoryNone;
	 
	 return cell;
	
}
	 
#pragma mark -
#pragma mark Table Delegate Methods

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	int newRow = [indexPath row];
	int oldRow = (lastIndexPath != nil) ? [lastIndexPath row] : -1;
	
	if (newRow != oldRow) {
		UITableViewCell *newCell = [tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath];
		
		newCell.accessoryType = UITableViewCellAccessoryCheckmark;
		
		UITableViewCell *oldCell = [tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath];
		
		oldCell.accessoryType = UITableViewCellAccessoryNone;
		lastIndexPath = indexPath;
		
									
	}
	
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}
	 
	 
@end
